//
//  LabelView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        HStack{
            Text("Добавка \"Липа\" \n к чаю 200 г")
                .font(.largeTitle).bold()
                .padding(.horizontal, 16)
            Spacer(minLength: 0)
        }
    }
}
