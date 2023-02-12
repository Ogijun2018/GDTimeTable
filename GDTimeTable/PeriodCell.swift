//
//  PeriodCell.swift
//  GDTimeTable
//
//  Created by Jun Ogino on 2022/12/04.
//

import Foundation
import SwiftUI
import UIKit

struct PeriodCell: View {
    let periodName: String
    let color: Color
    let width: CGFloat
    let onPress: (() -> Void)?
    var height: CGFloat {
        get { width * 1.2 }
    }

    var lightColor: Color {
        get { Color(UIColor(color).brightness(ratio: 1.2)) }
    }
    var shadowColor: Color {
        get { Color(UIColor(color).brightness(ratio: 0.8)) }
    }
    let radius = CGFloat(10)

    var body: some View {
        ZStack {
            Button(action: {
                onPress?()
            }){
                Text(periodName)
                    .font(.system(size: 13, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .frame(width: width, height: height)
                    .background(
                        RoundedRectangle(cornerRadius: radius)
                            .fill(
                                // gloss in button
                                .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                // shadow in button
                                .shadow(.inner(color: shadowColor, radius: 6, x: -4, y: -4))
                            )
                            .foregroundColor(color)
                            .shadow(color: color, radius: 5, y: 0)
                    )
            }
        }
    }
    
    init(periodName: String, color: Color, width: CGFloat, onPress: (() -> Void)?) {
        self.periodName = periodName
        self.color = color
        self.width = width
        self.onPress = onPress
    }
}

struct PeriodCell_Previews: PreviewProvider {
    static var previews: some View {
        PeriodCell(periodName: "現代社会", color: Color.CellBlue, width: 100, onPress: nil)
    }
}
