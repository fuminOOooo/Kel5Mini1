//
//  CalendarManager.swift
//  Kel5Mini1
//
//  Created by yuri wardana on 01/05/23.
//
import SwiftUI
import EventKit

class  CalendarManager : ObservableObject {
    
    @Published var eventStore = EKEventStore()

    func requestAccess(completion: @escaping (Bool) -> Void) {
        eventStore.requestAccess(to: .event) { granted, error in
            completion(granted)
        }
    }

    func getEvents(from startDate: Date, to endDate: Date) -> [EKEvent] {
        let predicate = eventStore.predicateForEvents(withStart: startDate, end: endDate, calendars: nil)
//        print(" ini \(predicate)")
        return eventStore.events(matching: predicate)
    }
    
    func addEvent(startDate: Date, startTime: Date, title: String, notes: String) {
            eventStore.requestAccess(to: .event) { granted, error in
                if granted && error == nil {
                    let event = EKEvent(eventStore: self.eventStore)
                    event.title = title
                    
                    let startDateAndTime = self.setTimeInDate(date: startDate, time: startTime)
                    event.startDate = startDateAndTime
                    event.endDate = startDateAndTime.addingTimeInterval(60 * 60) // 1 hour
                    event.calendar = self.eventStore.defaultCalendarForNewEvents
                    event.notes = notes
                
                    
                    do {
                        try self.eventStore.save(event, span: .thisEvent)
                        print("Event saved to calendar!")
                    } catch let error as NSError {
                        print("Failed to save event with error: \(error.localizedDescription)")
                    }
                } else {
                    print("Access denied")
                }
            }
        }
    
    private func setTimeInDate(date: Date, time: Date) -> Date {
        let calendar = Calendar.current
        
        var dateComponents = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: date)
        let timeComponents = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: time)
        
        dateComponents.hour = timeComponents.hour
        dateComponents.minute = timeComponents.minute
        
        return calendar.date(from: dateComponents) ?? date
    }
    
    func deleteEvent(event: EKEvent) {
           do {
               try self.eventStore.remove(event, span: .thisEvent)
           } catch {
               print("Error deleting event: \(error.localizedDescription)")
           }
       }
}//ori 1 buat accses calendar


struct ContentView: View {
    
    let calendarManager = CalendarManager() // buat accses calendar ori 1

    @State var events = [EKEvent]()
    @State var eventStore = EKEventStore()
    @State var showEventDeleter = false
    
    var body: some View {
           
           Button ("add event to calender") {
               calendarManager.addEvent(startDate: Date(), startTime: Date(), title: "makan ajaa",notes: "makan di cafe")
           }
           
            List {
                ForEach(events, id: \.self) { event in
                    HStack{
                        Text(event.title)
                        Text("\(event.startDate)")
                        Text(event.notes ?? "")
                    }
                }
//                .onDelete(perform: { indexSet in
//                        calendarManager.deleteEvent(event: events[indexSet])
//                })
            }
           .onAppear {
               calendarManager.requestAccess { granted in
                   if granted {
                       updateEvent()
                   }
               }
           }
           .onReceive(NotificationCenter.default.publisher(for: .EKEventStoreChanged)) { _ in
               updateEvent()
           }//on recieve adalah sebuah publisher, publisher itu ngasih tau klo ada perubahan di hal yang kita subscribe
       }
    
    fileprivate func updateEvent() {
        let startDate = Date()
        let endDate = Calendar.current.date(byAdding: .month, value: 1, to: startDate)!
        events = calendarManager.getEvents(from: startDate, to: endDate)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
