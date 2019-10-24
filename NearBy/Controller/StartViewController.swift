//
//  StartViewController.swift
//  NearBy
//
//  Created by Ehab Eletreby on 10/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class StartViewController: UIViewController, NVActivityIndicatorViewable {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.stopAnimating()
            self.performSegue(withIdentifier: "StartShow", sender: self)
        })
    }
}
