//
//  PopularProductsView.swift
//  E-commerce Store
//
//  Created by english on 2025-02-05.
//

import SwiftUI

let images: [ProductModel] = [
    .init(id: 0, title: .basketball, image: "basketball", price: "$1.99 each", color: "1"),
    .init(id: 1, title: .shoes, image: "shoes", price: "$2.04 each", color: "2"),
   .init(id: 2, title: .iphone, image: "iphone", price: "$1.04 each", color: "3"),
   .init(id: 3, title: .computer, image: "computer", price: "$2.06 each", color: "4"),
    .init(id: 4, title: .keyboard, image: "keyboard", price: "$3.00 each", color: "5"),
   .init(id: 5, title: .headphone, image: "headphone", price: "$1.04 each", color: "6"),
   .init(id: 6, title: .earbuds, image: "earbuds", price: "$2.00 each", color: "1"),
   .init(id: 7, title: .speaker, image: "speaker", price: "$1.00 each", color: "2"),
   .init(id: 8, title: .hat, image: "hat", price: "$2.54 each", color: "3"),
   .init(id: 9, title: .briefcase, image: "briefcase", price: "$3.04 each", color: "4"),
   .init(id: 10, title: .monitor, image: "monitor", price: "$1.04 each", color: "5"),
   .init(id: 11, title: .tshirt, image: "tshirt", price: "$2.78 each", color: "6"),
   .init(id: 12, title: .pants, image: "pants", price: "$2.04 each", color: "1"),
   .init(id: 13, title: .mouse, image: "mouse", price: "$2.04 each", color: "2"),
   .init(id: 14, title: .binoculars, image: "binoculars", price: "1.00 each", color: "3"),
   .init(id: 15, title: .pen, image: "pen", price: "$1.56 each", color: "4"),
   .init(id: 16, title: .knife, image: "knife", price: "$2.04 each", color: "5"),
   .init(id: 17, title: .plate, image: "plate", price: "$2.84 each", color: "6"),
   .init(id: 18, title: .chicken, image: "chicken", price: "$1.15 each", color: "1"),
   .init(id: 19, title: .rice, image: "rice", price: "$2.35 each", color: "2"),
]

struct PopularProductsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20){
                ForEach(images, id: \.id){
                    post in NavigationLink(destination: DetailView(product: post.title)) {
                        ProductCard(product: post)
                    }
                }
            }
        }
    }
}

#Preview {
    PopularProductsView()
}
