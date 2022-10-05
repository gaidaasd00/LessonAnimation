//
//  CurvesView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 05.10.2022.
//

import SwiftUI

struct CurvesView: View {
    var body: some View {
        GeometryReader { geomery in
            let width = geomery.size.width
            let height = geomery.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size - nearLine
            
            Path { path in
                
            }
        }
    }
}

struct CurvesView_Previews: PreviewProvider {
    static var previews: some View {
        CurvesView()
    }
}
