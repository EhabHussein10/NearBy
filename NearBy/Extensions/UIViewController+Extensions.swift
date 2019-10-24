//
//  UIViewController+Extensions.swift
//  NearBy
//
//  Created by Ehab Eletreb on 10/24/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(message: String, title: String) {
        let errorAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayBtn = UIAlertAction(title: "Okay", style: .default, handler: { (action) in
            errorAlert.dismiss(animated: true, completion: nil)
        })
        errorAlert.addAction(okayBtn)
        present(errorAlert, animated: true, completion: nil)
    }
}
