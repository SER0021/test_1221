//
//  HomeView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            VStack{
                ScrollView{
                    VStack{
                        ImageView()
                        ScoreView()
                        LabelView()
                        CountryView()
                        DescriptionView()
                        SpecificationsView()
                        CommentView()
                        
                        
                    }
                }
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarItems(
                    leading:
                        HStack {
                            Button(action: {
                                // Handle button tap
                            }) {
                                Image(systemName: "arrow.backward")
                                    .foregroundColor(.green)
                            }
                        },
                    trailing:
                        HStack {
                            Button(action: {
                                // Handle button tap
                            }) {
                                Image(systemName: "list.bullet.rectangle.portrait")
                                    .foregroundColor(.green)
                            }
                            Button(action: {
                                // Handle button tap
                            }) {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(.green)
                            }
                            Button(action: {
                                // Handle button tap
                            }) {
                                Image(systemName: "heart")
                                    .foregroundColor(.green)
                            }
                        }
                )
                PriceView()
                    .padding()
                    .background(Color.white)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        
    }
}
