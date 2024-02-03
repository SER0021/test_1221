//
//  DescriptionView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Описание")
                    .bold()
                    .font(.system(size: 21))
                    .padding(.leading, 6)
                Spacer(minLength: 0)
            }
            Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
            
        }
        .padding()
        
    }
}
