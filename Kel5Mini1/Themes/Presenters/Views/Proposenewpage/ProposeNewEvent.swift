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
    
    var body:some View {
        
        VStack {
            
            ProposeNewEventBackButton()
            
            ProposeNewEventDatePicker()
            
            ProposeNewEventTextFields()
            
            Spacer()
            
            ProposeNewEventStartTime()
            
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
