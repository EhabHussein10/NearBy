//
//  MainViewController.swift
//  NearBy
//
//  Created by Ehab Eletreby on 10/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var contentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let projectCellNibFile = UINib(nibName: "CustomeCell", bundle: nil)
        contentTableView.register(projectCellNibFile, forCellReuseIdentifier: "CustomeCell")
        
        contentTableView.delegate = self
        contentTableView.dataSource = self
    }
    @IBAction func showAccurateLocation(_ sender: Any) {
        performSegue(withIdentifier: "ShowRealTime", sender: self)
    }
    
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = contentTableView.dequeueReusableCell(withIdentifier: "CustomeCell") as? CustomeCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CustomeCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension MainViewController: UITableViewDelegate {
    
}
