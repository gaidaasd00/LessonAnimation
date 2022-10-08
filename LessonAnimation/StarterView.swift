//
//  StarterView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 08.10.2022.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
            .tabItem {
                Image(systemName: "rosette")
                Text("Main")
            }
            CartReacingView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("CartReacing")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "ruler.fill")
                    Text("Awords")
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
