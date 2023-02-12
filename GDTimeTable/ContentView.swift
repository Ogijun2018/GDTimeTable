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
    let cellSpacing = 50.0
    let deviceWidth = UIScreen.main.bounds.width
    let deviceHeight = UIScreen.main.bounds.height
    let verticalCount: CGFloat = 5
    let horizontalCount: Int = 5
    @State private var show: Bool = false
    
    var cellWidth: CGFloat {
        get {
            return (deviceWidth - cellSpacing) / CGFloat(horizontalCount)
        }
    }

    var data = ["ソフトウエア工学", "基礎科学実験A", "基礎科学実験B", "化学I", "線形代数学", "情報学演習", "体育", "社会情報学"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 0, alignment: .center), count: horizontalCount)) {
                    ForEach(data, id: \.self) { value in
                        PeriodCell(periodName: String(value), color: Color.CellRed, width: cellWidth, onPress: {
                            self.show.toggle()
                        })
                    }
                }.sheet(isPresented: self.$show) {
                    EditView()
                }
            }
            .navigationTitle("TimeTable")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("左のボタンが押されたよ")
                    }) {
                        Image(systemName: "ellipsis.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("右のボタンが押されたよ")
                    }){
                        Image(systemName: "trash")
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
