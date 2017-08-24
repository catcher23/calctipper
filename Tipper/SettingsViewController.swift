//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Danny Lau on 23/8/17.
//  Copyright © 2017 Danny Lau. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    let defaults = UserDefaults.standard
    
    
    func setDefaultSegment(index: Int) {
        defaults.set(index, forKey: "defaultSegment")
        defaults.synchronize()
    }
    
    func getDefaultSegment() -> Int {
        return defaults.integer(forKey: "defaultSegment")
    }
    
    func updateDefaultSegment() {
        defaultTipControl.selectedSegmentIndex = getDefaultSegment()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateDefaultSegment()
    }

    @IBAction func setDefaultOnClick(_ sender: AnyObject) {
        setDefaultSegment(index: sender.selectedSegmentIndex)
        changeColors()
    }
    
    private func changeColors() {
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        defaultTipControl.tintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }
}
