//
//  LoginView.swift
//  CoffeeApp
//
//  Created by Альпеша on 20.12.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    private var text:String = "example@example.ru"
    
    var body: some View {
        VStack{
            Text("Вход")
                .font(
                    Font.custom("SF UI Display", size: 18)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.52, green: 0.39, blue: 0.25))
                .frame(width: 375, alignment: .top)
            
            VStack(alignment: .leading, spacing: 15){
                VStack(alignment: .leading){
                    Text("e-mail")
                        .font(Font.custom("SF UI Display", size: 15))
                        .foregroundColor(Color(red: 0.52, green: 0.39, blue: 0.25))
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 339, height: 47)
                            .cornerRadius(24.5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 24.5)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.52, green: 0.39, blue: 0.25), lineWidth: 2)
                            )
                        TextField(text, text:$username)
                            .padding(EdgeInsets(top:10,leading: 20, bottom: 10, trailing: 20))
                        
                        
                    }
                    .foregroundColor(.black)
                }
                .padding(.horizontal, 0)
                .padding(.top, 0.4945)
                .padding(.bottom, 0)
                .frame(width: 339, alignment: .leading)
                
                VStack(alignment: .leading){
                    Text("Пароль")
                        .font(Font.custom("SF UI Display", size: 15))
                        .foregroundColor(Color(red: 0.52, green: 0.39, blue: 0.25))
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 339, height: 47)
                            .cornerRadius(24.5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 24.5)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.52, green: 0.39, blue: 0.25), lineWidth: 2)
                            )
                        SecureField("Password", text: $password)
                        
                            .padding(EdgeInsets(top:10,leading: 20, bottom: 10, trailing: 20))
                    }
                    
                }
                
                .padding(.horizontal, 0)
                .padding(.top, 0.4945)
                .padding(.bottom, 0)
                .frame(width: 339, alignment: .leading)
                
                VStack(alignment: .leading){
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 338, height: 47)
                            .background(Color(red: 0.2, green: 0.18, blue: 0.1))
                            .cornerRadius(24.5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 24.5)
                                    .inset(by: 0.5)
                                    .stroke(.white.opacity(0.15), lineWidth: 1)
                            )
                        Button(action: {
                            // Handle registration logic
                        }) {
                            Text("Войти")
                                .font(
                                    Font.custom("SF UI Display", size: 18)
                                        .weight(.bold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.96, green: 0.9, blue: 0.82))
                                .frame(width: 338, height: 21, alignment: .top)
                        }
                    }
                    .frame(width: 338, height: 47)
                }
                .padding(.top, 0.4945)
            }
            .navigationTitle("Вход")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
            
        }
        .background(.white)
    }
}

#Preview {
    LoginView()
}
