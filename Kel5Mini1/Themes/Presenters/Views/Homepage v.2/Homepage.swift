//
//  ContentView.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 19/04/23.
//

import SwiftUI
import CoreData

struct Homepage: View {
    init() {
        let appearance = UINavigationBarAppearance()
        let customColor = UIColor(named: "PB-800")!
        appearance.titleTextAttributes = [.foregroundColor: customColor, .font: UIFont(name: "Fredoka-Medium", size: 18)!
            ]
        UINavigationBar.appearance().standardAppearance = appearance
    }
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body:some View {
        
        NavigationView {
            VStack {
                Homepage1()
                    .padding(.top)
                
                Homepage2()
            
                Homepage3()
                    .padding(.top)
                
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }

    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Homepage().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
