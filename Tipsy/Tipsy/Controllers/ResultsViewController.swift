//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Rafsan Al Mamun on 10/2/22.
//  Copyright © 2022 Rafsan Al Mamun. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalBill = "0.0"
    var split = 0
    var tipPct = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalBill
        settingsLabel.text = "Split between \(split) people, with \(tipPct) tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
