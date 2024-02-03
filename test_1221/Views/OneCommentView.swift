//
//  OneCommentView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct OneCommentView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .shadow(radius: 6)
                .foregroundColor(.white)
                                .frame(width: 250, height: 200) // Размеры квадрата
                                .overlay(
                                    VStack{
                                        HStack{
                                            Text("Александр В.")
                                                .font(.system(size: 18))
                                                .bold()
                                                .padding(.bottom, 3)
                                            Spacer()
                                        }
                                        HStack{
                                            Text("7 мая 2021")
                                                .font(.system(size: 16))
                                                .foregroundColor(.gray)
                                                .padding(.bottom, 3)
                                            Spacer()
                                        }
                                        HStack{
                                            Image(systemName: "star.fill")
                                                .font(.system(size: 16))
                                                .foregroundColor(.yellow)
                                            Image(systemName: "star.fill")
                                                .font(.system(size: 16))
                                                .foregroundColor(.yellow)
                                            Image(systemName: "star.fill")
                                                .font(.system(size: 16))
                                                .foregroundColor(.yellow)
                                            Image(systemName: "star.fill")
                                                .font(.system(size: 16))
                                                .foregroundColor(.yellow)
                                            Image(systemName: "star.fill")
                                                .font(.system(size: 16))
                                                .foregroundColor(.gray)
                                            Spacer()
                                        }
                                        Spacer(minLength: 0)
                                        Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                                    }
                                        .padding()
                                    
                                )
        }
        .padding()
    }
}
