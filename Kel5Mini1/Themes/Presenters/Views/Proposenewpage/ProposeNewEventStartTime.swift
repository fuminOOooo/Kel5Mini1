//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 28/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct ProposeNewEventStartTime: View {
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    
    @Binding var selectedTime: Date
    
    var body: some View {
        VStack (spacing: 4) {
            
            HStack {
                Image(systemName: "clock")
                    .bold()
                
                Text("Start")
                    .font(.subheadline)
                
                Spacer()
                
                DatePicker("", selection: $selectedTime, displayedComponents: .hourAndMinute)
                            .labelsHidden()
            }
            
            
        }
    }
    
}
