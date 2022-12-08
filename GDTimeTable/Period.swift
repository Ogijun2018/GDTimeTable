//
//  Period.swift
//  GDTimeTable
//
//  Created by Jun Ogino on 2022/12/09.
//

import SwiftUI

struct Period: View {
    let periodName: String
    let color: Color
//    let bgColor: Color
    let bgColor = Color.init(red: 0.92, green: 0.93, blue: 0.94)
    let grayColor = Color.init(white: 0.8, opacity: 1)

    var body: some View {
        ZStack {
            // whiteの影を使うため若干グレーがかった背景を使う
            bgColor.ignoresSafeArea()
            Button(action: {
                print("button tapped")
            }){
                VStack {
                    Text(periodName)
                        .padding(.vertical, 3)
                        .font(.system(size: 10, weight: .bold))
                        .frame(minWidth: 30, maxWidth: 100, minHeight: 50, maxHeight: 100)
                    Text("C401")
                    Text("山田")
                }
                .font(.system(size: 8, weight: .semibold, design: .rounded))
                .foregroundColor(.gray)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(bgColor)
                        // 上側の凸をshadowで表現
                        .shadow(color: .white, radius: 5, x: 4, y: 4)
                        // 下側の凸をshadowで表現
                        .shadow(color: grayColor, radius: 5, x: -4, y: -4)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 0)
                )
            }
        }
    }
    
    init(periodName: String, color: Color) {
        self.periodName = periodName
        self.color = color
    }
}

struct Period_Previews: PreviewProvider {
    static var previews: some View {
        Period(periodName: "sample", color: .blue)
    }
}
