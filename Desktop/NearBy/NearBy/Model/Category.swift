//
//  Category.swift
//  NearBy
//
//  Created by Ehab Eletreby on 10/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var name:String
    private(set) public var adress:String
    private(set) public var imageName:String
    
    init(name:String, adress:String, imageName:String) {
        self.name = name
        self.adress = adress
        self.imageName = imageName
    }
}
