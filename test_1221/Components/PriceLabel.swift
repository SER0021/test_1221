//
//  PriceLabel.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct PriceLabel: View {
    var body: some View {
        VStack{
            HStack{
                Text("55.9").font(.system(size: 30)).bold()
                FractionView(numerator: "₽", denominator: "кг")
            }
            Text("199,0")
                .foregroundColor(.gray)
                .strikethrough(true, color: .gray)
                .offset(x: -35)
        }
    }
}
