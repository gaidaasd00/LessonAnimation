//
//  AvardsView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 05.10.2022.
//

import SwiftUI

struct AvardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                }
            }
            .navigationTitle("Awards")
        }
    }
}

struct AvardsView_Previews: PreviewProvider {
    static var previews: some View {
        AvardsView()
    }
}
