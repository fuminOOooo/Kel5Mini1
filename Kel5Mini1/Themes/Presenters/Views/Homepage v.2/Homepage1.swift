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
    
    @StateObject var PnVM = ProposenewViewModel()
    
    @StateObject var HpVM = HomepageViewModel()
    
    @State var calendarSelection: Bool = false
    
    var body: some View {
        VStack (spacing: 4) {
            
            // Component 1
            HStack {
                
                // Calendar Name
                Button {
                    // SHOULD NAVIGATE TO CALENDARS MODAL
                    calendarSelection.toggle()
                    
                } label: {
                    
                    // "Mitun's Family" SHOULD BE CHANGABLE
                    Text(HpVM.calendars[HpVM.currentCalendar].calendarName)
                        .font(Font.custom("Fredoka-Bold", size: 26))
                        .foregroundColor(Color("PB-800"))
                    
                    Image(systemName: "chevron.down")
                        .font(Font.custom("Fredoka-Bold", size: 16))
                        .foregroundColor(Color("PB-800"))
                    
                }
                .sheet(isPresented: $calendarSelection, content: {
                    
                    GeometryReader { geometry in
                        
                        VStack {
                            
                            HStack {
                                
                                Spacer()
                                
                                Text("Families")
                                    .font(Font.custom("Fredoka-Medium", size: 20))
                                    .foregroundColor(Color("PB-800"))
                                
                                Spacer()
                                
                            }
                            .padding()
                            
                            ScrollView {
                                
                                List {
                                    
                                    ForEach(0..<HpVM.calendars.count) { calendars in
                                        Button  {
                                            
                                        } label: {
                                            HStack {
                                                VStack {
                                                    Text (HpVM.calendars[calendars].calendarName)
                                                    Text("\(HpVM.calendars[calendars].calendarMembers.count) Member(s)")
                                                }
                                            }
                                        }

                                        
                                        
                                    }
                                    
                                }
                                
                            }
                            
                            Button {
                                
                            } label: {
                                Text("+ Add another family calendar")
                                    .font(Font.custom("Fredoka-Regular", size: 16))
                                    .foregroundColor(Color("Secondary"))
                            }

                            
                            
                        }
                        .presentationDetents([.medium])
                    }
                    
                })
                
                Spacer()
                
                //Add Calendar Button
                NavigationLink {
                    Proposenewpage(VM: PnVM)
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
                        ForEach (0 ..< HpVM.calendars[HpVM.currentCalendar].calendarMembers.count) { users in
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
                    if (HpVM.calendars[HpVM.currentCalendar].calendarMembers.count > 3) {
                        Text("\(HpVM.calendars[HpVM.currentCalendar].calendarMembers.count-3)+")
                            .font(Font.custom("Fredoka", size: 14))
                            .foregroundColor(Color("PB-800"))
                    }
                }
                
                Spacer()
                
            }
            
        }
    }
}
