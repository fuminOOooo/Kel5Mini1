//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 28/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct Proposenewpage2: View {
    
    @State var viewSelectedDate: Date = Date()
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    var VM : ProposenewViewModel
    
    var body: some View {
        VStack () {
            
            //Component 2
            DatePicker("Select a date", selection: $viewSelectedDate, in: Date()..., displayedComponents: .date)
                .datePickerStyle(.graphical)
                .onChange(of: viewSelectedDate) { newValue in
                    VM.selectedDate = newValue
                    print(VM.selectedDate)
                }
                .padding()
            
            HStack {
                //Component 3
                Text("\(viewSelectedDate, formatter: DateFormatter().dateFormat())")
                    .padding()
                    .bold()
                    .font(.title3)
                
                Spacer()
                
            }
            
            
        }
    }
}

extension DateFormatter {
    func dateFormat() -> DateFormatter {
        self.dateStyle = .long
        return self
    }
}
