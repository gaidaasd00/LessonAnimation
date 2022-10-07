//
//  CartReacingView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 05.10.2022.
//

import SwiftUI

struct CartReacingView: View {
    @State private var start = false
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                CardView(
                    start: $start,
                    cartTitle: "Default",
                    colorCart: .red,
                    animation: .default
                )
                CardView(
                    start: $start,
                    cartTitle: "EaseOut",
                    colorCart: .green,
                    animation: .easeOut
                )
                CardView(
                    start: $start,
                    cartTitle: "EaseIn",
                    colorCart: .blue,
                    animation: .easeIn
                )
                CardView(
                    start: $start,
                    cartTitle: "EaseInOut",
                    colorCart: .yellow,
                    animation: .easeInOut
                )
                CardView(
                    start: $start,
                    cartTitle: "InterpolationSpring",
                    colorCart: .black,
                    animation: .interpolatingSpring(
                        mass: 1,
                        stiffness: 100,
                        damping: 10,
                        initialVelocity: 0
                    )
                )
                CardView(
                    start: $start,
                    cartTitle: "Spring",
                    colorCart: .brown,
                    animation: .spring(
                        response: 0.55,
                        dampingFraction: 0.45,
                        blendDuration: 0
                    )
                )
            }
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
    }
}

struct CartReacingView_Previews: PreviewProvider {
    static var previews: some View {
        CartReacingView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct CardView: View {
    @Binding var start: Bool
    
    let cartTitle: String
    let colorCart: Color
    let animation: Animation
    
    var body: some View {
        VStack{
            Image(systemName: "cart.fill")
                .font(.title)
                .foregroundColor(colorCart)
                .offset(x: start ? UIScreen.main.bounds.width - 200 : 0)
                .animation(animation, value: start)
            Text(cartTitle)
        }
    }
}
