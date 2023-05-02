//
//  Proposenew Viewmodel.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 29/04/23.
//

import Foundation
import Combine

class HomepageViewModel: ObservableObject {
    
    // For choosing which calendar should be selected
    
    @Published var currentCalendar: Int = 0
    
    struct oneCalendar{
        var calendarName: String
        var calendarOwner: String
        var calendarMembers: [String]
    }
    
    @Published var calendars: [oneCalendar] = [
        oneCalendar(calendarName: "Mitun's Family", calendarOwner: "Mitun", calendarMembers: ["Hai", "Halo"]),
        oneCalendar(calendarName: "Dary's Family", calendarOwner: "Dary", calendarMembers: ["Hai", "Halo", "Hey"]),
        oneCalendar(calendarName: "Elvis's Family", calendarOwner: "Elvis", calendarMembers: ["Hai", "Halo", "Hey", "Hello", "Ola"])
    ]
    
    
    @Published var calendarsAreShown: Bool = false
    
}
