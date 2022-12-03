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
//    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var data = ["mon-1", "tue-1", "wed-1", "thu-1", "fri-1", "mon-2", "mon-3", "mon-4"]
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 5)
    
    var body: some View {
         ScrollView {
             LazyVGrid(columns: columns) {
                 ForEach(data, id: \.self) { value in
                     Button(action: {
                         print("button tapped")
                     }, label: {
                         Text(value)
                             .padding()
                             .frame(maxWidth: .infinity, maxHeight: .infinity)
                             .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 2))
                             .shadow(color: .black, radius: 4, x: 1, y: 1)
                             .font(.body)
                     })
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
