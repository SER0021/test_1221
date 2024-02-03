//
//  ScoreView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("4.1").bold()
                .padding(.trailing, -3)
            Text("| 19 отзывов")
                .foregroundColor(.gray)
            Spacer()
            Text("-5%").bold()
                .foregroundColor(.white)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.red)
                .cornerRadius(4)
        }
        .padding(.horizontal, 16)
    }
}
