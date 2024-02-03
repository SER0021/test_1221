//
//  ContentView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }
            
            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
            Text("Корзина")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
        .accentColor(.green)
        
        
    }
}

#Preview {
    ContentView()
}
