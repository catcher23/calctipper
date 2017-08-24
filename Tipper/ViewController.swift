//
//  ViewController.swift
//  Tipper
//
//  Created by Danny Lau on 23/8/17.
//  Copyright © 2017 Danny Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let defaults = UserDefaults.standard
    
    func getDefaultSegment() -> Int {
        return defaults.integer(forKey: "defaultSegment")
    }
    
    
    func updateDefaultSegment() {
        let defaultSegment = getDefaultSegment()
        print(defaultSegment)
        tipControl.selectedSegmentIndex = defaultSegment
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        customizeDefaultColors()
        updateDefaultSegment()
        calculate()
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true);
    }
    
    func calculate() {
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        calculate()
    }
    
    private func customizeDefaultColors() {
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        billField.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        billField.textColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        totalLabel.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        tipControl.tintColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
    }
}

