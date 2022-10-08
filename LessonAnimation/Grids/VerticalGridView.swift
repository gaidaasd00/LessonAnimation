//
//  VerticalGridView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 08.10.2022.
//

import SwiftUI

struct VerticalGridView: View {
    private let dataSet = (1...100).map { "Item: \($0)" }
    private let columns = [GridItem(.adaptive(minimum: 80))]
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(dataSet, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
