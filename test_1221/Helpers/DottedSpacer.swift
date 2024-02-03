//
//  DottedSpacer.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//


import SwiftUI

struct DottedSpacer: View {
    var count: Int
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<count) { _ in
                Text("\u{2022}") // символ точки
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
            }
        }
    }
}
