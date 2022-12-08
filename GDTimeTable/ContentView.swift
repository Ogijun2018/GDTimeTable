//
//  ContentView.swift
//  GDTimeTable
//
//  Created by Jun Ogino on 2022/12/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VerticalSmileys()
    }
}

struct VerticalSmileys: View {
    var data = ["ソフトウエア工学", "基礎科学実験A", "基礎科学実験B", "化学I", "線形代数学", "情報学演習", "体育", "社会情報学"]
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 5)
    var hoge: [GridItem] = [GridItem(.fixed(1))]
    let bgColor = Color.init(red: 0.92, green: 0.93, blue: 0.94)
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            ScrollView {
                bgColor.ignoresSafeArea()
                LazyVGrid(columns: columns) {
                    ForEach((1...50), id: \.self) { value in
                        if(value % 5 == 1) {
                            
                        } else {
                            PeriodCell(periodName: String(value), color: .blue)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSmileys()
    }
}
