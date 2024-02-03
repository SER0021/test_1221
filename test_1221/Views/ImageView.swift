//
//  ImageView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct ImageView: View {
    
    @State private var isFullScreen = false
    
    var body: some View {
        VStack{
            Text("Цена по карте")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 6)
                .background(Color.green)
                .cornerRadius(4)
                .offset(x: -110)
            
            Image("lipa")
                .resizable()
                .frame(width: 300, height: 200)
            
        }
    }
}
