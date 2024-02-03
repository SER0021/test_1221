//
//  ContentView.swift
//  test_1221
//
//  Created by Сергей Васильев on 03.02.2024.
//

import SwiftUI


struct ImageView: View {
    var body: some View {
        VStack{
            Text("Цена по карте")
                .font(.system(size: 14))
                .foregroundStyle(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 6)
                .background(Color.green)
                .cornerRadius(4)
                .offset(x: -110)
            
            Image(systemName: "display")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

struct ScoreView: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill").foregroundStyle(.yellow)
            Text("4.1").bold()
                .padding(.trailing, -3)
            Text("| 19 отзывов").foregroundStyle(.gray)
            Spacer()
            Text("-5%").bold()
                .foregroundStyle(.white)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.red)
                .cornerRadius(4)
        }
        .padding(.horizontal, 16)
    }
}

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

struct DescriptionView: View {
    var body: some View {
        VStack{
            Text("Описание").bold()
                .font(.system(size: 21))
            Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
            
        }
        
    }
}

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
                                    .foregroundStyle(.green)
                            }
                        },
                    trailing:
                        HStack {
                            Button(action: {
                                // Handle button tap
                            }) {
                                Image(systemName: "list.bullet.rectangle.portrait")
                                    .foregroundStyle(.green)
                            }
                            Button(action: {
                                // Handle button tap
                            }) {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundStyle(.green)
                            }
                            Button(action: {
                                // Handle button tap
                            }) {
                                Image(systemName: "heart")
                                    .foregroundStyle(.green)
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


struct FractionView: View {
    var numerator: String
    var denominator: String
    var body: some View {
        HStack {
            Text("\(numerator)")
                .font(.system(size: 14)).bold()
                .offset(x: 7, y: 2)
                .alignmentGuide(VerticalAlignment.center,
                                computeValue: { d in d[.bottom] })
            Text("∕").font(.system(size: 24)).bold()
            Text("\(denominator)")
                .font(.system(size: 14)).bold()
                .offset(x: -7, y: -2)
                .alignmentGuide(VerticalAlignment.center,
                                computeValue: { d in d[.top] })
        }
    }
}


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
                    .foregroundStyle(.white)
                
            }
            VStack{
                Text("\(Int(counter)) шт")
                    .font(.headline)
                    .padding(.horizontal)
                Text("\(String(format: "%.1f", counter * 55.9)) ₽")
            }
            .foregroundStyle(.white)
            
            Button(action: {
                self.counter += 1
            }) {
                Image(systemName: "plus")
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                
            }
            
        }
        .padding(.horizontal, 5)
        .padding(.vertical, 5)
        .background(Color.green)
        .cornerRadius(30)
    }
}


struct PriceLabel: View {
    var body: some View {
        VStack{
            HStack{
                Text("55.9").font(.system(size: 30)).bold()
                FractionView(numerator: "₽", denominator: "кг")
            }
            Text("199,0")
                .foregroundStyle(.gray)
                .strikethrough(true, color: .gray)
                .offset(x: -35)
        }
    }
}


struct PriceView: View {
    
    @State private var selectedColorIndex = 0
    
    var body: some View {
        VStack {
            Picker("Favorite Color", selection: $selectedColorIndex, content: {
                Text("Шт").tag(0)
                Text("Кг").tag(1)
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 16)
            
            
            HStack{
                PriceLabel()
                Spacer(minLength: 0)
                CountPicker()
            }
            .padding(.horizontal, 16)
        }
    }
}


struct ContentView: View {
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            
            Text("Каталог")
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            Text("Корзина")
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            Text("Профиль")
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
