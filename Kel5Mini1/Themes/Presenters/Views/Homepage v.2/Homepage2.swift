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
                    .font(Font.custom("Fredoka-Medium", size: 20))
                    .foregroundColor(Color("PB-800"))
                
                Spacer()
                
                // SHOULD NAVIGATE TO UPCOMING EVENTS LIST
                NavigationLink {
                    Upcoming()
                } label: {
                    Text ("See all")
                        .font(Font.custom("Fredoka", size: 16))
                        .foregroundColor(Color("Secondary"))
                }
                
                
            }
            
            // Component 4
            HStack {
                
                VStack {
                    
                    // Component 4.1
                    HStack {
                        
                        HStack {
                            
                            // "Monday, 17 Apr" SHOULD BE CHANGABLE
                            Text("Monday, 17 Apr")
                                .font(Font.custom("Fredoka-Medium", size: 16))
                                .foregroundColor(Color("Primary"))
                            
                            Image(systemName: "circle.fill")
                                .font(Font.custom("Fredoka-Medium", size: 3))
                                .foregroundColor(Color("Primary"))
                            
                            // "06.00 pm" SHOULD BE CHANGABLE
                            Text("06.00 pm")
                                .font(Font.custom("Fredoka-Medium", size: 16))
                                .foregroundColor(Color("Primary"))
                        }
                        
                        Spacer()
                    }
                    
                    // Component 4.2
                    HStack {
                        
                        Text("It's Mealtime!")
                            .font(Font.custom("Fredoka-Regular", size: 18))
                            .foregroundColor(Color("PB-800"))
                        
                        Spacer()
                        
                    }

                    
                    // Component 4.3
                    HStack {
                        // Text SHOULD BE CHANGABLE
                        Text("This iftar, Hannah will pay for everything!")
                            .font(Font.custom("Fredoka-Light", size: 16))
                            .foregroundColor(Color("PB-800"))
                        Spacer()
                        
                    }
                    
                    HStack {
                        HStack (spacing: -2) {
                            
                            // "temporaryUsers" SHOULD BE CHANGABLE
                            ForEach (0 ..< temporaryUsers.count) { users in
                                if (users < 3) {
                                    Image(systemName: "person.circle.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.white)
                                        .shadow(radius: 3)
                                }
                            }
                        }
                        
                        // "temporaryUsers" SHOULD BE CHANGABLE
                        if (temporaryUsers.count > 3) {
                            Text("\(temporaryUsers.count-3)+")
                                .font(Font.custom("Fredoka", size: 14))
                                .foregroundColor(Color("PB-800"))
                        }
                        
                        Spacer()
                    }
                    
                    // Component 4.4
                    HStack {
                        
                        Button {
                            
                        } label: {
                            Text("Need an interesting topic to discuss? Click Me! 🥳")
                                .font(Font.custom("Fredoka-Medium", size: 12))
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                    .padding()
                    .frame(width: 315, height: 44)
                    .background(Color("Secondary"))
                    .cornerRadius(6)
                    
                }
                .padding()
                .frame(height: 180)
            }
            .background(Color("PB-50"))
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 1, y: 2)
            
        }
        .padding(.top)
            
            
    }
}
