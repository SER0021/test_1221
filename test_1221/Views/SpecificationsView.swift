//
//  SpecificationsView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct SpecificationsView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Основные характеристики")
                    .bold()
                    .font(.system(size: 21))
                    .padding(.leading, 6)
                Spacer(minLength: 0)
            }
            HStack{
                Text("Производство")
                DottedSpacer(count: 20)
                Text("Россия, \n Краснодарский край").multilineTextAlignment(.trailing)
            }.font(.system(size: 14))
                .padding(.horizontal, 6)
                
            HStack{
                Text("Энергетическая ценность, ккал/100 г")
                DottedSpacer(count: 9)
                Text("25 ккал, 105 кДж").multilineTextAlignment(.trailing)
            }.font(.system(size: 14))
                .padding(.horizontal, 6)
                .padding(.bottom, 10)
            HStack{
                Text("Жиры/100 г")
                DottedSpacer(count: 30)
                Text("0,1 г").multilineTextAlignment(.trailing)
            }.font(.system(size: 14))
                .padding(.horizontal, 6)
                .padding(.bottom, 10)
            HStack{
                Text("Белки/100 г")
                DottedSpacer(count: 30)
                Text("1,3 г").multilineTextAlignment(.trailing)
            }.font(.system(size: 14))
                .padding(.horizontal, 6)
                .padding(.bottom, 10)
            HStack{
                Text("Углеводы/100 г")
                DottedSpacer(count: 30)
                Text("3,3 г").multilineTextAlignment(.trailing)
            }.font(.system(size: 14))
                .padding(.horizontal, 6)
            
            HStack{
                Button(action: {
                    // Действие при нажатии кнопки
                }) {
                    Text("Все характеристики")
                        .font(.headline)
                        .bold()
                        .padding()
                        .foregroundColor(.green)
                }.padding(.leading, -10)
                Spacer()
            }
        }
        .padding()
    }
}
