//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 27/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct ProposeNewEventTextFields: View {
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    @State private var selectedDate = Date()
    @State private var eventName: String = ""
    
    var body: some View {
        VStack (spacing: 4) {
            
            // Component 4
            TextField("Add event name", text: $eventName)
                .foregroundColor(Color("C7C7CC"))
                .font(.title3)
                .bold()
                .padding()
                .background(Color("F2F2F7"))
            
            Divider()
            
            // Component 5
            TextField("Add description", text: $eventName)
                .font(.subheadline)
                .foregroundColor(Color("C7C7CC"))
                .bold()
                .padding()
                .background(Color("F2F2F7"))
            
        }
    }
}
