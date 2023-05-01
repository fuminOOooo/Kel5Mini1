//
//  Upcomingpage.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 26/04/23.
//

import SwiftUI
import CoreData

struct ProposeNewEvent: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    @State private var eventName: String = ""
    @State private var eventDesc: String = ""
    
    
    
    var body:some View {
        
        VStack {
            
            ProposeNewEventBackButton()
            
            ProposeNewEventDatePicker(selectedDate: $selectedDate)
                
            ProposeNewEventTextFields(eventName: $eventName, eventDesc: $eventDesc)
            
            Spacer()
            
            ProposeNewEventStartTime(selectedTime: $selectedTime)
            
            ProposeNewEventButton(selectedDate: selectedDate, selectedTime: selectedTime,
                                  eventName: eventName, eventDesc: eventDesc)
            
        }
        .navigationTitle("Propose New Event")
        .padding()
        .navigationBarBackButtonHidden(true)
    }
    
    
}

struct ProposeNewEvent_Previews: PreviewProvider {
    static var previews: some View {
        ProposeNewEvent().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
