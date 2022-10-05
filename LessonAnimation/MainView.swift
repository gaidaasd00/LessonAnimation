//
//  MainView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 05.10.2022.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: {awardIsShowing.toggle()}) {
                HStack {
                    if awardIsShowing {
                        Text("Hide Award")
                        Image(systemName: "chevron.up.square")
                    } else {
                        Text("Show Award")
                        Image(systemName: "chevron.down.square")
                    }
                }
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
