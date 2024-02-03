//
//  CountPicker.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct CountPicker: View {
    
    @State private var counter = 0.0
    
    var body: some View {
        
        HStack {
            Button(action: {
                self.counter -= 1
                self.counter =  self.counter > 0 ? counter : 0
                
            }) {
                Image(systemName: "minus")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                
            }
            VStack{
                Text("\(Int(counter)) шт")
                    .font(.headline)
                    .padding(.horizontal)
                Text("\(String(format: "%.1f", counter * 55.9)) ₽")
            }
            .foregroundColor(.white)
            
            Button(action: {
                self.counter += 1
            }) {
                Image(systemName: "plus")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                
            }
            
        }
        .padding(.horizontal, 5)
        .padding(.vertical, 5)
        .background(Color.green)
        .cornerRadius(30)
    }
}
