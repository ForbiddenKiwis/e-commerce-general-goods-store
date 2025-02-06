//
//  CartView.swift
//  E-commerce Store
//
//  Created by english on 2025-02-06.
//

import SwiftUI

struct CartView: View {
        @State private var cartItems: [CartItem] = [
            CartItem(product: .basketball, quantity: 1, price: 29.99),
            CartItem(product: .headphone, quantity: 2, price: 89.99),
            CartItem(product: .iphone, quantity: 1, price: 999.99)
        ]
            
        // Computed total price of all cart items
        private var totalPrice: Double {
            cartItems.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
        }
            
    var body: some View {
        VStack {
            // Header
            Text("Your Cart")
                .font(.largeTitle)
                .bold()
                .padding()
            
            // Cart Items List
            List {
                ForEach(cartItems, id: \.product) { item in
                    HStack {
                        Text(item.product.rawValue.capitalized)
                            .font(.headline)
                        Spacer()
                        Text("x\(item.quantity)")
                        Spacer()
                        Text("$\(String(format: "%.2f", item.price * Double(item.quantity)))")
                    }
                }
            }
            
            // Total Price Section
            HStack {
                Text("Total:")
                    .font(.title)
                    .bold()
                Spacer()
                Text("$\(String(format: "%.2f", totalPrice))")
                    .font(.title)
                    .bold()
            }
            .padding()
            
            // Checkout Button
            Button(action: {
                // Action for Checkout, e.g., go to a checkout screen or perform the checkout logic.
                print("Proceed to Checkout")
            }) {
                NavigationLink(destination: HomeScreen()){
                    Text("Proceed to Checkout")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    CartView()
}
