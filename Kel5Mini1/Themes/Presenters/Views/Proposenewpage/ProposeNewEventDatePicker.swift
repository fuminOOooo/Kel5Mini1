//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 27/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct ProposeNewEventDatePicker: View {
    
    @EnvironmentObject var CalendarManagerPropose : CalendarManager
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    
    @Binding var selectedDate: Date
    
    var body: some View {
        VStack (spacing: 4) {
            
            // Component 2
            DatePicker("Select a date", selection: $selectedDate, in: Date()..., displayedComponents: .date)
                .datePickerStyle(.graphical)
            
            
            HStack {
                
                // Component 3
                Text("\(selectedDate, formatter: DateFormatter().dateFormat())")
                    .font(.title3)
                    .bold()
                    .padding(.leading)
                    .padding(.bottom)
                
                Spacer()
                
            }
            
            Divider()
            
        }
    }
}

extension DateFormatter {
    func dateFormat() -> DateFormatter {
        self.dateStyle = .long
        return self
    }
}
