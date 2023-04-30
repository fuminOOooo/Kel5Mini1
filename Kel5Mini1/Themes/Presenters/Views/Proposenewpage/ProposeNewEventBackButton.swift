//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 26/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct ProposeNewEventBackButton: View {
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack (spacing: 4) {
            
        // Component 1
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .bold()
                        .font(.headline)
                        .padding(.leading)
                })
            }
        }
        .padding(.leading)
        .padding(.trailing)
//        .toolbar {
//
//            ToolbarItem(placement: .navigationBarLeading) {
//
//                    NavigationLink {
//                        Homepage()
//                    } label: {
//                        Image(systemName: "chevron.left")
//                            .foregroundColor(.black)
//                            .bold()
//                            .font(.headline)
//                        .padding(.leading)
//                    }
//
//            }
//        }
//        .padding(.leading)
//        .padding(.trailing)
    }
}
