//
//  ImageData.swift
//  E-commerce Store
//
//  Created by english on 2025-02-05.
//

import Foundation

struct ProductModel {
    var id: Int
    var title: productTitle
    var image: String
    var price: String
    var color: String
}

enum productTitle: String {
    case basketball, shoes, iphone, computer, keyboard, headphone, earbuds, speaker, hat, briefcase, monitor, tshirt, pants, mouse, binoculars, pen, knife, plate, chicken, rice
}
