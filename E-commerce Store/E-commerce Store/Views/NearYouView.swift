//
//  NearYouView.swift
//  E-commerce Store
//
//  Created by english on 2025-02-05.
//

import SwiftUI

struct NearYouView: View{
    let dataArray: [Places] = [
        .init(id: 0, name: "ABC Market", time: "8:00 - 15:00", rating: "* 4.8 | 📍 1.5 Km", image: "1"),
        .init(id: 1, name: "JFC Store", time: "10:00 - 18:00", rating: "*3.6 | 📍 5.2 Km", image: "2"),
        .init(id: 2, name: "Kiwi Electronics", time: "11:00 - 18:00", rating: "*4.2 | 📍 10 Km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ForEach(dataArray, id: \.id) {
                post in NavigationLink(destination: RatingDetailView(place: post)) {
                    HStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.gray.opacity(0.3))
                            .frame(width: 100, height: 100)
                            .overlay(
                                Image(post.image)
                                    .resizable()
                                    .scaledToFit()
                            )
                        VStack(alignment: .leading) {
                            Text("\(post.name)")
                                .font(.system(.headline))
                            Text("\(post.time)")
                                .font(.system(.headline))
                                .foregroundStyle(.gray)
                            
                            Text("\(post.rating)")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NearYouView()
}
