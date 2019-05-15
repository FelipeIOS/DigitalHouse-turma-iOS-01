//
//  ViewController.swift
//  TableViewCustom
//
//  Created by ADM-ok on 14/05/2019.
//  Copyright © 2019 ADM-ok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        
        self.tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

}


extension ViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        
        cell.textLabel?.text = String(indexPath.row)
        
        return cell
    }
    
}
