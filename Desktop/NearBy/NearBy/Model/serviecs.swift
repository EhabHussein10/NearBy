//
//  serviecs.swift
//  NearBy
//
//  Created by Ehab Eletreby on 10/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(name: "SHIRTS", adress: "Devslopes Logo Shirt Black", imageName: "shirts.png"),
        Category(name: "HOODIES", adress: "Devslopes Hoodie Black", imageName: "hoodies.png"),
        Category(name: "HATS", adress: "Devslopes Logo Hat Black", imageName: "hats.png"),
        Category(name: "DIGITAL", adress: "112233aaaww5", imageName: "digital.png")
        ]
    
    func getCategories () -> [Category] {
        return categories
    }
    
}
