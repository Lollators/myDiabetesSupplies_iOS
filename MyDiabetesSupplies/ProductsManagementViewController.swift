//
//  ProductsManagement.swift
//  MyDiabetesSupplies
//
//  Created by Luca Missaglia on 4/11/20.
//  Copyright © 2020 Luca Missaglia. All rights reserved.
//

import UIKit

class ProductsManagementViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var datePickerTextField: UITextField!
    @IBOutlet weak var productTypeTextField: UITextField!
    
    private var datePicker: UIDatePicker?
    private var productPicker: UIPickerView?
    let productTypeArray = ["Lancets", "Test Strips", "Insulin", "Sites", "Tanks", "Sensors"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return productTypeArray.count
    }
    
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return productTypeArray[row]
    }
    
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        productTypeTextField.text = productTypeArray[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        productPicker = UIPickerView()
        
        datePicker?.datePickerMode = .date
        datePickerTextField.inputView = datePicker
        productTypeTextField.inputView = productPicker
        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        productPicker?.delegate = self
        
        let toolBar = UIToolbar()
               toolBar.barStyle = UIBarStyle.default
               toolBar.isTranslucent = true
               toolBar.tintColor = #colorLiteral(red: 0.224999994, green: 0.3549999893, blue: 1, alpha: 1)
               toolBar.sizeToFit()

        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.viewTapped(gestureRecognizer:)))
        toolBar.setItems([doneButton], animated: true)

        toolBar.isUserInteractionEnabled = true
        datePickerTextField.inputAccessoryView = toolBar
        productTypeTextField.inputAccessoryView = toolBar
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        datePickerTextField.text = dateFormatter.string(from: datePicker.date)
    }
    
    
    
}
