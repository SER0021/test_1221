//
//  CommentView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct CommentView: View {
    var count = 152
    var body: some View {
        VStack{
            HStack{
                Text("Отзывы")
                    .bold()
                    .font(.system(size: 24))
                    .padding(.leading, 6)
                Spacer(minLength: 0)
                Button(action: {
                    // Действие при нажатии кнопки
                }) {
                    Text("Все \(count)")
                        .bold()
                        .font(.system(size: 18))
                        .padding(.trailing, 6)
                        .foregroundColor(.green)
//                        .foregroundStyle(.green)
                }
                
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: -10){
                    OneCommentView()
                    OneCommentView()
                    OneCommentView()
                }
            }
            
            
            Button(action: {
                        // Действие при нажатии кнопки
                    }) {
                        Text("Оставить отзыв")
                            .bold()
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.green, lineWidth: 2) // Зеленая граница
                                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.white)) // Белый цвет кнопки
                            )
                    }
        }
        .padding()
        
    }
}
