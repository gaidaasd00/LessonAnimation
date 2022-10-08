//
//  CastomGridView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 08.10.2022.
//

import SwiftUI

struct CastomGridView<Content: View, T>: View {
    let items: [T]
    let colums: Int
    let content: (T) -> Content
    
    private var rows: Int {
        items.count / colums
    }
    
    var body: some View {
        GeometryReader { geometry in
            let sideLength = geometry.size.width / CGFloat(colums)
            ScrollView {
                VStack {
                    ForEach(0...rows, id: \.self) { rowIndex in
                        HStack {
                            ForEach(0..<colums, id: \.self) { columsIndex in
                                if let index =  getIndex(row: rowIndex, colum: columsIndex) {
                                    content(items[index])
                                        .frame(width: sideLength, height: sideLength)
                                } else {
                                    Spacer()
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    private func getIndex(row: Int, colum: Int) -> Int? {
        let index = row * colums + colum
        return index < items.count ? index : nil
    }
}


struct CastomGridView_Previews: PreviewProvider {
    static var previews: some View {
        CastomGridView(items: [0, 1, 2, 3, 4, 5, 6], colums: 3) { item in
            Text(item.formatted())
        }
    }
}
