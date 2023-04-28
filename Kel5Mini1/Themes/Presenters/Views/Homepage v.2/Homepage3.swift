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
        VStack{
            //upcoming navigation
            HStack{
                Text ("PROPOSED EVENT")
                    .font(Font.custom("Fredoka-Medium", size: 14))
                    .foregroundColor(Color("Gray3"))
                Spacer()
                NavigationLink {
                    Upcoming()
                } label: {
                    Text ("See all")
                        .font(Font.custom("Fredoka", size: 16))
                        .foregroundColor(Color("Secondary"))
                }
            }
            .padding(.top)
            
            //card
            VStack(alignment: .leading, spacing: 14){
                HStack(){
                    //Content should be changeable
                    Text("Elvis has invited you to join...")
                        .font(Font.custom("Fredoka-Regular", size: 14))
                        .foregroundColor(Color("PB-800"))
                }
                
                HStack{
                    // "Monday, 17 Apr" SHOULD BE CHANGABLE
                    Text("Sunday, 21 Apr")
                        .font(Font.custom("Fredoka-Medium", size: 20))
                        .foregroundColor(Color("Primary"))
                    
                    Image(systemName: "circle.fill")
                        .font(Font.custom("Fredoka-Medium", size: 5))
                        .foregroundColor(Color("Primary"))
                    
                    // "06.00 pm" SHOULD BE CHANGABLE
                    Text("08.00 pm")
                        .font(Font.custom("Fredoka-Medium", size: 20))
                        .foregroundColor(Color("Primary"))
                    Spacer()
                }
                
                //Content should be changeable
                VStack(alignment: .leading, spacing: 4){
                    Text("I got a new resto recommendation, let’s eat there!")
                        .font(Font.custom("Fredoka-Regular", size: 17))
                        .foregroundColor(.gray)
                }
                
                VStack(alignment: .leading, spacing: 4){
                    Text("INVITEES STATUS")
                        .font(Font.custom("Fredoka-Medium", size: 11))
                        .foregroundColor(.gray)
                    
                    //Member List
                    Button {
                        // SHOULD NAVIGATE TO MEMBER DETAILS
                    } label: {
                        HStack {
                            ForEach (0 ..< temporaryUsers.count) { users in
                                if (users < 4) {
                                    Image(systemName: "person.crop.circle.badge.fill")
                                        .font(Font.custom("Fredoka-Medium", size: 20))
                                        .foregroundColor(.green)
                                }
                            }
                        }

                        if (temporaryUsers.count > 4) {
                            Text("+\(temporaryUsers.count-4)")
                                .font(Font.custom("Fredoka-Medium", size: 12))
                                .foregroundColor(.green)
                        }
                    }
                    
                    
                }
                
                HStack(alignment: .center) {
                    Button {
                        //code here
                    } label: {
                        Text("Decline")
                            .frame(minWidth: 125)
                    }
                    .buttonStyle(BorderButton())
                    Spacer()
                    Button {
                        //code here
                    } label: {
                        Text("Accept")
                            .frame(minWidth: 125)
                    }
                    .buttonStyle(FillButton())
                }
                
            }
            .padding()
            .background(.white)
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.1), radius: 3, x: 1, y: 2)
        }
    }
}

