//
//  CountryView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct CountryView: View {
    var body: some View {
        HStack{
            Image("spain")
                .resizable()
                .frame(width: 30, height: 30)
                .cornerRadius(15)
            Text("Испания, Риоха")
                .font(.system(size: 16))
            Spacer()
            
        }
        .padding(.horizontal,16)
    }
}
