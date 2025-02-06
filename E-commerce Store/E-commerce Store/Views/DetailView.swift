//
//  DetailView.swift
//  E-commerce Store
//
//  Created by english on 2025-02-05.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corner: UIRectCorner
    let radius: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct Counter: View{
    @State var count = 0
    var body: some View{
        HStack(spacing: 20){
            Button(action: {
                self.count += 1
            }) {
                Image(systemName: "plus")
            }
            Text("\(self.count)")
                .font(.title)
            
            Button(action: {
                self.count -= 1
                if self.count < 0 {
                    self.count = 0
                }
            }) {
                Image(systemName: "minus")
            }
        }
    }
}

struct Cart{
    private(set) var products: [ProductModel] = []
    
    mutating func addItem(_ product: ProductModel) {
        products.append(product)
    }
    
    func itemCount() -> Int {
        return products.count
    }
}

struct DetailView: View {
    @State var product: productTitle
    @State var cart = Cart()
    @State var showAlert = false
    @State var isNavigatingBack = false
//    @State private var product = ProductModel()
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(corner: .bottomLeft, radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 5, x:5, y:5)
                .overlay(
                    Image(product.rawValue)
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                )
            Spacer()
            Text("\(product.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            
            Text("Each (499 g - 1 kg)")
                .padding(.horizontal)
            Text("Products Develop by Kiwi Tech Industry")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                    Text("3 - 5 Business Day")
                }
            }.padding(.horizontal)
            
            HStack{
                Text("6.99$")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.horizontal)
                
                Spacer()
                Counter()
            }
            
            Button(action: {
                showAlert = true
            }) {
                Image("bg")
                    .resizable()
                    .frame(width: 350, height: 50, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .overlay(
                        Text("Add to Cart")
                            .font(.title3)
                            .fontWeight(.medium)
                    )
                    .padding(.horizontal)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Add to Cart"),
                    message: Text("Do you want to add \(product) to your cart?"),
                    primaryButton: .default(Text("Yes")) {
                        // Add the item to the cart
                        // cart.addItem()
                        isNavigatingBack = true
                    },
                    secondaryButton: .cancel()
                )
            }

            // NavigationLink to HomeScreen
            NavigationLink(destination: HomeScreen(), isActive: $isNavigatingBack) {
                EmptyView()
            }
        }
    }
}


#Preview {
    DetailView(product: .chicken)
}
