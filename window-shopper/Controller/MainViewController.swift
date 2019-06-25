//
//  ViewController.swift
//  window-shopper
//
//  Created by Anthony Cozzi on 6/25/19.
//  Copyright © 2019 Anthony Cozzi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var hoursTxt: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60) )
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        hoursTxt.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    @objc func calculate(){
        if let wageAmt = wageTxt.text, let priceAmt = priceTxt.text {
            if let wage = Double(wageAmt), let price = Double(priceAmt){
                view.endEditing(true)
                hoursTxt.isHidden = false
                hoursLbl.isHidden = false
                hoursTxt.text = "\(Wage.getHours(forWage: wage,andPrice:price))"
            }
        }
    }

    @IBAction func clearCalc(_ sender: Any) {
        hoursTxt.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

