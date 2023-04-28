//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 28/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct Proposenewpage4: View {
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    
    var body: some View {
        VStack (spacing: 4) {
            
            HStack {
                Image(systemName: "clock")
                    .bold()
                
                Text("Start")
                    .font(.subheadline)
                
                Spacer()
                
                DatePicker("", selection: $selectedDate, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                
            }
            
            
        }
    }
}
