//
//  ProductCard.swift
//  E-commerce Store
//
//  Created by english on 2025-02-05.
//

import SwiftUI

let product = ProductModel(id: 1, title: .chicken, image: "chicken", price: "6.99$", color: "1")

struct ProductCard: View {
    let product: ProductModel
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5){
                Text(product.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundStyle(.black)
                
                Text(product.price)
                    .font(.system(.title3))
                    .foregroundStyle(.black.opacity(0.7))
                Image(product.image)
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .clipShape(RoundedCornerShape.init(corner: .bottomLeft, radius: 50))
                    .frame(width: 75, height: 75, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    .shadow(color: .gray, radius: 5, x:5, y:5)
                
                
                Spacer()
            }.padding()
                .frame(width: 175, height: 150, alignment: .center)
                .background(Color(product.color))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .black.opacity(0.3), radius: 10, x:5, y:5)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}

#Preview {
    ProductCard(product: product)
}
