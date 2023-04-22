//
//  Homepage2.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 22/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct Homepage3: View {
    
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
                Button {
                    
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
                    
                    
                    // Component 4.4
                    HStack {
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Decline")
                                .font(.caption)
                                .foregroundColor(Color("414BB2"))
                                .bold()
                        }
                        .padding()
                        .border(Color("d9dcef"))
                        .frame(height: 40)
                        .cornerRadius(5)
                        
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
                    .padding(.trailing)
                    
                }
                .frame(height: 180)
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
