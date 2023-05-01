//
//  ProposeNewEventButton.swift
//  Kel5Mini1
//
//  Created by yuri wardana on 01/05/23.
//

import Foundation
import SwiftUI
import CoreData

struct ProposeNewEventButton: View {
    
    @EnvironmentObject var calendarManager: CalendarManager
    @Environment(\.dismiss) private var dismiss
    
    var selectedDate: Date
    var selectedTime: Date
    var eventName: String
    var eventDesc: String
    
    var body: some View {
        HStack {
            Button(action: {
                calendarManager.addEvent(startDate: selectedDate, startTime: selectedTime, title: eventName, notes: eventDesc)
                dismiss()
            }, label: {
                Text("add event")
            })
        }
    }
}
