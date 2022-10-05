//
//  PathView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 05.10.2022.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        //универсальные данные что бы не терять полотно в фрейме
        GeometryReader { geomery in
            let width = geomery.size.width
            let height = geomery.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size - nearLine
            
            // полотно
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            //рфзделитель
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .stroke(
                Color.white,
                style: StrokeStyle(lineWidth: 3, dash: [size / nearLine])
            )
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(nearLine / 100)
                .offset(x: -size / 7.25)
            
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
