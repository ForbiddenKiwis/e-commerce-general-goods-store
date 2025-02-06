//
//  HomeScreen.swift
//  E-commerce Store
//
//  Created by english on 2025-02-05.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack{
                VStack(alignment: .leading, spacing: 10) {
                    HStack{
                        Image(systemName: "line.3.horizontal")
                        Spacer()
                    }
                    HStack(){
                        Text("Kiwi Market inc.")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink(destination: CartView()){
                            Image(systemName: "cart.fill")
                        }
                        
                    }
                    Text("Find Products that you want.")
                    
                    SearchView()
                    
                    Text("Popular Products View")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    PopularProductsView()
                    
                    Text("Near You")
                        .font(.title)
                        .fontWeight(.bold)
                    NearYouView()
                }.padding()
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomeScreen()
}
