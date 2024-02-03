//
//  FractionView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct FractionView: View {
    var numerator: String
    var denominator: String
    var body: some View {
        HStack {
            Text("\(numerator)")
                .font(.system(size: 14)).bold()
                .offset(x: 7, y: 2)
                .alignmentGuide(VerticalAlignment.center,
                                computeValue: { d in d[.bottom] })
            Text("∕").font(.system(size: 24)).bold()
            Text("\(denominator)")
                .font(.system(size: 14)).bold()
                .offset(x: -7, y: -2)
                .alignmentGuide(VerticalAlignment.center,
                                computeValue: { d in d[.top] })
        }
    }
}
