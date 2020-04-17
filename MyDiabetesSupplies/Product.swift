//
//  Product.swift
//  MyDiabetesSupplies
//
//  Created by Luca Missaglia on 4/11/20.
//  Copyright © 2020 Luca Missaglia. All rights reserved.
//

import Foundation

class Product: NSObject {
    private var serialNumber: String
    private var name: String
    private var expirationDate: String
    private var bin: String
    
    init(serialNumber: String, name: String, expirationDate: String, bin: String) {
        self.serialNumber = serialNumber
        self.name = name
        self.expirationDate = expirationDate
        self.bin = bin
    }
    
    func setSerialNumber(serialNumber: String) {
        self.serialNumber = serialNumber
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func setExpirationDate(expirationDate: String) {
        self.expirationDate = expirationDate
    }
    
    func setBin(bin: String) {
        self.bin = bin
    }
    
    func getSerialNumber() -> String {
        return self.serialNumber
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getExpirationDate() -> String {
        return self.expirationDate
    }
    
    func getBin() -> String {
        return self.bin
    }
    
}
