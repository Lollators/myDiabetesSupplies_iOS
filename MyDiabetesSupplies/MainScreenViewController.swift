//
//  MainScreenViewController.swift
//  MyDiabetesSupplies
//
//  Created by Luca Missaglia on 4/10/20.
//  Copyright © 2020 Luca Missaglia. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    var productList = [Product]()
    
    @IBOutlet weak var myTableView: UITableView!
    //let productTypeArray = ["Lancets", "Test Strips", "Insulin", "Sites", "Tanks", "Sensors"]
    
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func productManagementOpen(_ sender: Any) {
        self.performSegue(withIdentifier: "manageProductsSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "ProductCell", bundle: nil)
        
        myTableView.register(nib, forCellReuseIdentifier: "ProductCell")
        myTableView.delegate = self
        myTableView.dataSource = self
        loadProducts()
    }
    
    private func loadProducts() {
        let myProduct = Product.init(serialNumber: "AAtest", name: "Lancets", expirationDate: "04/05/2021", bin: "A")
        
        productList += [myProduct]
    }
}

extension MainScreenViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell has been tapped")
    }
    
}

extension MainScreenViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ProductCell",
                                                   for: indexPath) as! ProductCell
        
        cell.serialNumberLabel.text = "Serial Number: " + productList[indexPath.row].getSerialNumber()
        cell.expirationDateLabel.text = "Expiration Date: " + productList[indexPath.row].getExpirationDate()
        cell.binLabel.text = "Bin #: " + productList[indexPath.row].getBin()
        
        return cell
    }
}
