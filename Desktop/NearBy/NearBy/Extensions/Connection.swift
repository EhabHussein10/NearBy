//
//  Connection.swift
//  NearBy
//
//  Created by Mac on 10/24/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire

class Connection {
    class func  isConnected () -> Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
