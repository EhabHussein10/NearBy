//
//  GetData.swift
//  NearBy
//
//  Created by Ehab Eletreby on 10/24/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire
import RealmSwift

class GetData {
    class func getDataFromBackEnd(completionHandler: @escaping () -> Void) {
        if let token = UserDefaults.standard.string(forKey: "auth_token"){
            let request = Router.getData(["Authorization": token])
            AF.request(request).validate().response { response in
                switch response.result {
                case .success(let value):
                    let realm = try! Realm()
                    try! realm.write {
                        realm.add(Object(value: value))
                    }
                    completionHandler()
                case.failure:
                    break
                }
            }
        }
    }
}
