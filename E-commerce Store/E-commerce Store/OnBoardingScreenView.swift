//
//  OnBoardingScreenView.swift
//  E-commerce Store
//
//  Created by english on 2025-02-05.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30) {
                Spacer()
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .padding()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order you're Desired Products.")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Buy Unique and Fun Products.")
                        .font(.system(.title3))
                        .foregroundStyle(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 30){
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Image(systemName: "chevron.right")
                            }.foregroundStyle(.black)
                        )
                }
                Spacer()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

#Preview {
    OnBoardingScreenView()
}
