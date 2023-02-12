//
//  ColorExtention.swift
//  GDTimeTable
//
//  Created by Jun Ogino on 2023/02/12.
//

import Foundation
import SwiftUI
import UIKit

extension UIColor {
    // SwiftUI ColorではgetHueができないため、UIColorを使用する
    func brightness(ratio: CGFloat) -> UIColor {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness * ratio, alpha: alpha)
        } else {
            return self
        }
    }
}

extension Color {
    static let CellRed = Color("CellRed")
    static let CellYellow = Color("CellYellow")
    static let CellBlue = Color("CellBlue")
    static let CellOrange = Color("CellOrange")
    static let CellPurple = Color("CellPurple")
    static let CellGreen = Color("CellGreen")
}
