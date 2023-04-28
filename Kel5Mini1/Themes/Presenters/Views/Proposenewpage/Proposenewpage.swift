//
//  Upcomingpage.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 26/04/23.
//

import SwiftUI
import CoreData

struct Proposenewpage: View {
    
    var VM: ProposenewViewModel
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body:some View {
        
            VStack {
                
                Proposenewpage1()
                
                Proposenewpage2(VM: VM)
                
                Proposenewpage3(VM: VM)
                
                Proposenewpage4(VM: VM)
                
                Spacer()
                
            }
            .navigationTitle("Propose New Event")
            .padding()
            .navigationBarBackButtonHidden(true)
    }

    
}
