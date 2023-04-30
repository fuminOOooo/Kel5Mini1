//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 21/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct HomePageHeader: View {
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    
    var body: some View {
        VStack (spacing: 4) {
            
            // Component 1
            HStack {
                
                // Calendar Name
                Button {
                    // SHOULD NAVIGATE TO CALENDARS MODAL
                } label: {
                    
                    // "Mitun's Family" SHOULD BE CHANGABLE
                    Text("Mitun's Family")
                        .font(.title)
                        .foregroundColor(Color("414BB2"))
                        .bold()
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color("414BB2"))
                        .bold()
                }
                
                Spacer()
                
                //Add Calendar Button
                NavigationLink {
                    ProposeNewEvent()
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .bold()
                        .font(.title2)
                }
                
            }
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
            
            //Component 2
            HStack {
                
                
                Button {
                    // SHOULD NAVIGATE TO MEMBER DETAILS
                } label: {
                    HStack (spacing: -7) {
                        
                        // "temporaryUsers" SHOULD BE CHANGABLE
                        ForEach (0 ..< temporaryUsers.count) { users in
                            if (users < 3) {
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color("ededf7"))
                            }
                        }
                    }
                    
                    // "temporaryUsers" SHOULD BE CHANGABLE
                    if (temporaryUsers.count > 3) {
                        Text("+\(temporaryUsers.count-3)")
                            .font(.subheadline)
                            .foregroundColor(Color("414BB2"))
                    }
                }
                
                Spacer()
                
            }
            .padding(.leading)
            .padding(.trailing)
            
        }
    }
}
