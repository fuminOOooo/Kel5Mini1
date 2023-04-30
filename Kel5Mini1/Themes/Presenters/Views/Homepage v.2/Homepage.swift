//
//  ContentView.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 19/04/23.
//

import SwiftUI
import CoreData

struct Homepage: View {
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body:some View {
        
        NavigationView {
            
            VStack {
                
                HomePageHeader()
                
                HomepageUpcomingEvent()
            
                HomePageProposedEvent()
                
                Spacer()
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }

    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Homepage().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
