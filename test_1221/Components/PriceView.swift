//
//  PriceView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct PriceView: View {
    
    @State private var selectedColorIndex = 0
    
    var body: some View {
        VStack {
            Picker("Favorite Color", selection: $selectedColorIndex, content: {
                Text("Шт").tag(0)
                Text("Кг").tag(1)
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 16)
            
            
            HStack{
                PriceLabel()
                Spacer(minLength: 0)
                CountPicker()
            }
            .padding(.horizontal, 16)
        }
    }
}
