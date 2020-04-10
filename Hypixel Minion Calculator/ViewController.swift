//
//  ViewController.swift
//  Hypixel Minion Calculator
//
//  Created by Hiro on 4/10/20.
//  Copyright © 2020 Hiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mpm: UILabel!
    @IBOutlet weak var mph: UILabel!
    
    @IBOutlet weak var mpd: UILabel!
    
    @IBOutlet weak var TPA: UITextField!
    @IBOutlet weak var Sell: UITextField!
    
    @IBOutlet weak var Count: UITextField!
    @IBOutlet weak var Fuel: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClick(_ sender: UIButton) {
        let timePS = Float(TPA.text!)
        let sel = Float(Sell.text!)
        let minions = Float(Count.text!)
        let f =  Float(Fuel.text!)
        let newTPS = timePS!/(1+f!)
        let matsPM = (newTPS*2)/minions!
        let actualMatsPM = 60/matsPM
        let moneyPM = actualMatsPM * sel!
        let moneyPH = moneyPM*60
        let moneyPD = moneyPH*24
        mpm.text = "Money/Per Minute: \(String(moneyPM))"
        mph.text = "Money/Per Hour: \(String(moneyPH))"
        mpd.text = "Money/Per Day: \(String(moneyPD))"

        
    }
    
}

