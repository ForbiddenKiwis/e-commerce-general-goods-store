//
//  SearchView.swift
//  E-commerce Store
//
//  Created by english on 2025-02-06.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    @State private var isNavigatingToDetail = false
    @State private var selectedProduct: productTitle? = nil
    var products: [productTitle] = [.basketball,.binoculars,.briefcase,.chicken,.computer,.earbuds,.hat,.headphone,.iphone,.keyboard,.knife,.monitor,.mouse,.pants,.pen,.plate,.rice,.shoes,.speaker,.tshirt]
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(.gray.opacity(0.3))
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: $searchText, onCommit: {
                        if let product = products.first(where: { $0.rawValue.lowercased() == searchText.lowercased() }) {
                            selectedProduct = product
                            isNavigatingToDetail = true
                        }
                    })
                        .foregroundStyle(.gray)
                        .padding(.leading, 5)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .frame(height: 40)
                    
                    Spacer()
                }
                .padding()
            )
            .frame(width: 350, height: 60, alignment: .center)
            .padding(.horizontal)

        if let product = selectedProduct {
            NavigationLink(destination: DetailView(product: product), isActive: $isNavigatingToDetail) {
                EmptyView()
            }
        }
    }
}

#Preview {
    SearchView()
}
