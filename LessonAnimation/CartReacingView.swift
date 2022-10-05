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
            VStack {
                VStack{
                    Image(systemName: "cart.fill")
                        .font(.title)
                        .foregroundColor(.red)
                    Text("Default")
                }
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
    }
}
