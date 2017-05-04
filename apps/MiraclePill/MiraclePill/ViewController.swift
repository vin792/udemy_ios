//
//  ViewController.swift
//  MiraclePill
//
//  Created by Vineeth Raghunath on 5/4/17.
//  Copyright © 2017 Vineeth Raghunath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pillImg: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var pillCost: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    
    let states: Array<String> = ["AK", "WA", "CA", "NY", "Other"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buyNowBtnPressed(_ sender: Any) {
        pillImg.isHidden = true
        pillLabel.isHidden = true
        pillCost.isHidden = true
        divider.isHidden = true
        nameLabel.isHidden = true
        nameField.isHidden = true
        addressLabel.isHidden = true
        addressField.isHidden = true
        cityLabel.isHidden = true
        cityField.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryField.isHidden = true
        buyNowBtn.isHidden = true
        successImg.isHidden = false
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryField.isHidden = true
        countryLabel.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryField.isHidden = false
        countryLabel.isHidden = false
        buyNowBtn.isHidden = false
    }
}

