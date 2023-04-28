//
//  Upcomingpage.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 26/04/23.
//

import SwiftUI
import CoreData

struct Proposenewpage: View {
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body:some View {
        
            VStack {
                
                Proposenewpage1()
                
                Proposenewpage2()
                
                Proposenewpage3()
                
                Spacer()
                
                Proposenewpage4()
                
            }
            .navigationTitle("Propose New Event")
            .padding()
            .navigationBarBackButtonHidden(true)
    }

    
}
