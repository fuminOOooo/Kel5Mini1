//
//  AppColor.swift
//  Kel5Mini1
//
//  Created by Elvis Susanto on 21/04/23.
//

import Foundation
import SwiftUI

extension Color {
    init?(_ hex: String, alpha: Double = 1) {
        let str = hex
        guard let color = UInt64(str, radix: 16)
        else {
            return nil
        }
        let red = Double(Int(color >> 16) & 0x0000FF) / 255
        let green = Double(Int(color >> 8) & 0x0000FF) / 255
        let blue = Double(Int(color) & 0x0000FF) / 255
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}
