//
//  ConstantsURL.swift
//  NearBy
//
//  Created by Ehab Eletreby on 10/24/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire

struct Urls {
    static let main = "https://api.foursquare.com/v2/"
    static let venues = "venues/search"
    static let cleintID = "?client_id=02BDICJLM1WWU4ZSSQLTEEG4YF5EMXORPHDWX52TVW0QYMUU"
    static let cleintSecret = "&client_secret=ITXYHHASEQHBTTI2W5A5EZC3H53IX3QGHOGPCK0MSHNVPWIJ"
    static let lat = "&ll=40.7,-74"
    static let query = "&query=sushi"
    static let date = "&v=20191022"
    
    static let baseURl = "\(Urls.main)\(Urls.venues)\(Urls.cleintID)\(Urls.cleintSecret)\(Urls.lat)\(Urls.query)\(Urls.date)"
}

//https://api.foursquare.com/v2/venues/search
//?client_id=CLIENT_ID
//&client_secret=CLIENT_SECRET
//&ll=40.7,-74
//&query=sushi
//&v=YYYYMMDD
