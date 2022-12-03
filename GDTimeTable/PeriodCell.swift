//
//  PeriodCell.swift
//  GDTimeTable
//
//  Created by Jun Ogino on 2022/12/04.
//

import Foundation
import SwiftUI

struct PeriodCell: View {
    private let periodName: String
    private let color: Color
    private let backgroundColor: Color
    private let baseLength: CGFloat
    private let imageWidth: CGFloat
    
    init(periodName: String, color: Color, backgroundColor: Color) {
        self.periodName = periodName
        self.color = color
        self.backgroundColor = backgroundColor
        baseLength = UIScreen.main.bounds.width * 0.25
        imageWidth = baseLength * 0.5
    }
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(backgroundColor)

                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 0.5)

                Text(periodName)
                    .scaledToFit()
                    .frame(width: imageWidth)
                    .foregroundColor(color)
            }
            .frame(width: baseLength, height: baseLength)

            HStack {
                Spacer()
                Text(periodName)
                    .frame(height: 35, alignment: .top)
                    .multilineTextAlignment(.center)
                    .font(.caption)
                Spacer()
            }
        }
    }
}

struct PeriodCell_Previews: PreviewProvider {
    static var previews: some View {
        PeriodCell(periodName: "sample", color: .blue, backgroundColor: .black)
    }
}
