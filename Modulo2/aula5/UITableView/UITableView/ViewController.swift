//
//  ViewController.swift
//  UITableView
//
//  Created by ADM-ok on 14/05/2019.
//  Copyright © 2019 ADM-ok. All rights reserved.
//

import UIKit

enum veiculo: Int {
    case carro = 0
    case moto  = 1
}

class ViewController: UITableViewController {
    
    var arrayCarros:[String] = ["civic","corola","bmw","audi","mercedes"]
    var arrayMotos:[String] = ["R1","bravax","ducati","harley","bis","Kawasaki"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.arrayCarros.append("fusca")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Carros"
        }else{
            return "Motos"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return self.arrayCarros.count
        }else{
            return self.arrayMotos.count
        }
        
  
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        
        switch indexPath.section {
        case veiculo.carro.rawValue:
            cell.textLabel?.text = self.arrayCarros[indexPath.row]
        case veiculo.moto.rawValue:
             cell.textLabel?.text = self.arrayMotos[indexPath.row]
        default:
            return UITableViewCell()
        }
    
        return cell
        
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        switch indexPath.section {
        case veiculo.carro.rawValue:
          print("clicou no: \(self.arrayCarros[indexPath.row])")
        case veiculo.moto.rawValue:
           print("clicou na: \(self.arrayMotos[indexPath.row])")
        default:break
        }
        
        
        
    }
    
}


