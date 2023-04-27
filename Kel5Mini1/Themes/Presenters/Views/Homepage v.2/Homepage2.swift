//
//  Homepage2.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 22/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct Homepage2: View {
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    
    var body: some View {
        
        VStack {
            
            // Component 3
            HStack {
                
                Text ("Upcoming Event")
                    .foregroundColor(Color("414BB2"))
                    .bold()
                
                Spacer()
                
                // SHOULD NAVIGATE TO UPCOMING EVENTS LIST
                NavigationLink {
                    Upcoming()
                } label: {
                    Text ("See all")
                        .foregroundColor(Color("414BB2"))
                        .font(.subheadline)
                }
                
                
            }
            .padding(.trailing)
            .padding(.leading)
            
            // Component 4
            HStack {
                
                VStack {
                    
                    // Component 4.1
                    HStack {
                        
                        HStack {
                            
                            // "Monday, 17 Apr" SHOULD BE CHANGABLE
                            Text("Monday, 17 Apr")
                                .font(.caption)
                            
                            Image(systemName: "circle.fill")
                                .font(.system(size: 3))
                            
                            // "18.00" SHOULD BE CHANGABLE
                            Text("18.00")
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        HStack (spacing: -7) {
                            
                            // "temporaryUsers" SHOULD BE CHANGABLE
                            ForEach (0 ..< temporaryUsers.count) { users in
                                if (users < 3) {
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(Color("d9dcef"))
                                }
                            }
                        }
                        
                        // "temporaryUsers" SHOULD BE CHANGABLE
                        if (temporaryUsers.count > 3) {
                            Text("+\(temporaryUsers.count-3)")
                                .font(.caption)
                                .foregroundColor(Color("414BB2"))
                        }
                        
                        
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    // Component 4.2
                    HStack {
                        
                        Text("It's Mealtime!")
                            .bold()
                            .font(.title)
                        
                        Spacer()
                        
                    }
                    .padding(.leading)
                    
                    // Component 4.3
                    HStack {
                        
                        // Text SHOULD BE CHANGABLE
                        Text("This iftar, Hanna will pay for everything!")
                            .fontWeight(.light)
                        
                        Spacer()
                        
                    }
                    .padding(.leading)
                    
                    // Component 4.4
                    HStack {
                        
                        Button {
                            
                        } label: {
                            Text("Need an interesting topic to discuss? Click Me! 🥳")
                                .font(.caption)
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                        
                    }
                    .padding()
                    .frame(height: 50)
                    .background(Color("414BB2", alpha: 1))
                    .cornerRadius(5)
                    
                }
                .frame(height: 180)
            }
            .background(Color("414BB2", alpha: 0.1))
            .foregroundColor(Color("414BB2"))
            .padding(.trailing)
            .padding(.leading)
            
        }
        .padding(.top)
            
            
    }
}
