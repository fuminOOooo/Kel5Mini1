//
//  Homepage1.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 21/04/23.
//

import Foundation
import SwiftUI
import CoreData

struct Homepage1: View {
    
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
                        .font(Font.custom("Fredoka-Bold", size: 26))
                        .foregroundColor(Color("PB-800"))
                    
                    Image(systemName: "chevron.down")
                        .font(Font.custom("Fredoka-Bold", size: 16))
                        .foregroundColor(Color("PB-800"))
                }
                
                Spacer()
                
                //Add Calendar Button
                NavigationLink {
                    Proposenewpage()
                } label: {
                    Image(systemName: "plus")
                        .font(Font.custom("Fredoka-Bold", size: 24))
                        .foregroundColor(Color("PB-800"))
                        .bold()
                }
                
            }
            
            //Component 2
            HStack {
                
                
                Button {
                    // SHOULD NAVIGATE TO MEMBER DETAILS
                } label: {
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
                }
                
                Spacer()
                
            }
        }
//        .onAppear{
//            for family: String in UIFont.familyNames
//                    {
//                        print(family)
//                        for names: String in UIFont.fontNames(forFamilyName: family)
//                        {
//                            print("== \(names)")
//                        }
//                    }
//        }
    }
}
