//
//  AvardsView.swift
//  LessonAnimation
//
//  Created by Алексей Гайдуков on 05.10.2022.
//

import SwiftUI

//struct AwardsView: View {
//    private let awards = Award.getAwards().filter{$0.awarded}
//    var body: some View {
//        NavigationStack {
//            CastomGridView(items: awards, colums: 2) { award in
//                VStack {
//                    award.awardView
//                    Text(award.title)
//                }
//            }
//            .navigationTitle("Your awards \(awards.count)")
//        }
//    }
//}
struct AwardsView: View {
    private let awards = Award.getAwards().filter{$0.awarded}
    private let colums = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(awards, id: \.title) {award in
                        VStack {
                            award.awardView
                            Text(award.title)
                        }
                    }
                }
            }
            .navigationTitle("Your awards \(awards.count)")
        }
    }
}

struct AvardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
