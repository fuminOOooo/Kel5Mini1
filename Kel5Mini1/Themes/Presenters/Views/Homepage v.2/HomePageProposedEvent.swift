//
//  Homepage2.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 22/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct HomePageProposedEvent: View {
    
    @State var temporaryUsers: [String] = ["Hai", "Halo", "Hey", "Hello", "Ola"]
    
    var body: some View {
        
        VStack {
            
            // Component 5
            HStack {
                
                Text ("Proposed Event")
                    .foregroundColor(Color("414BB2"))
                    .bold()
                
                Spacer()
                
                // SHOULD NAVIGATE TO PROPOSED EVENTS LIST
                
                NavigationLink {
                    Proposed()
                } label: {
                    Text ("See all")
                        .foregroundColor(Color("414BB2"))
                        .font(.subheadline)
                }
                
                
            }
            .padding(.trailing)
            .padding(.leading)
            
            // Component 6
            HStack {
                
                VStack {
                    
                    // Component 6.1, 6.2 & 6.3
                    
                    VStack (spacing: 10) {
                        
                        // Component 6.1
                        HStack {
                            
                            HStack {
                                
                                // "Hannei" SHOULD BE CHANGABLE
                                Text("Hannei has invited you to join..")
                                    .font(.caption)
                                
                            }
                            
                            Spacer()
                            
                        }
                        .padding(.top)
                        .padding(.leading)
                        .padding(.trailing)
                        
                        // Component 6.2 & 6.3
                        VStack {
                            
                            // Component 6.2
                            HStack {
                                
                                // "Monday, 17 Apr" SHOULD BE CHANGABLE
                                Text("Monday, 17 Apr")
                                    .bold()
                                    .font(.title)
                                
                                Spacer()
                                
                            }
                            .padding(.leading)
                            
                            // Component 6.3
                            HStack {
                                
                                // "at 09.00" SHOULD BE CHANGABLE
                                Text("at 09.00")
                                    .bold()
                                    .font(.title2)
                                
                                Spacer()
                                
                            }
                            .padding(.leading)
                            .padding(.bottom)
                            
                        }
                        
                    }
                    
                    // Component 6.4
                    HStack {
                        
                        // Text SHOULD BE CHANGABLE
                        Text("I got THR guyss, let's iftar together!!!")
                            .fontWeight(.light)
                            .font(.subheadline)
                        
                        Spacer()
                        
                    }
                    .padding(.leading)
                    
                    // Component 6.5
                    HStack {
                        Text("INVITEES STATUS")
                            .bold()
                            .font(.caption2)
                            .foregroundColor(Color("E6E6E6"))
                        Spacer()
                    }
                    .padding(.top)
                    .padding(.leading)
                    
                    // Component 6.6
                    HStack {
                        
                        
                        Button {
                            // SHOULD NAVIGATE TO MEMBER DETAILS
                        } label: {
                            HStack {
                                
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
                    
                    // Component 6.7
                    HStack {
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Decline")
                                .padding()
                                .font(.caption)
                                .foregroundColor(Color("414BB2"))
                                .bold()
                        }
                        .frame(height: 40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .strokeBorder(.indigo, lineWidth: 1)
                        )
                        
                        
                        Button {
                            
                        } label: {
                            Text("Accept")
                                .font(.caption)
                                .foregroundColor(.white)
                                .bold()
                        }
                        .padding()
                        .frame(height: 40)
                        .background(Color("414BB2", alpha: 1))
                        .cornerRadius(5)
                        
                    }
                    .padding(.top)
                    .padding(.trailing)
                    
                }
                .frame(height: 300)
                
            }
            .padding(.bottom)
            .foregroundColor(Color("414BB2"))
            .border(.indigo)
            .padding(.trailing)
            .padding(.leading)
    
            
        }
        .padding(.top)
            
    }
}
