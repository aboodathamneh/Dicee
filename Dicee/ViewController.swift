//
//  ViewController.swift
//  Dicee
//
//  Created by Abood_ath on 8/13/18.
//  Copyright © 2018 Abood_ath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 = 0
     var randomDiceIndex2 = 0
    let DiceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var DiceImageView1: UIImageView!
    @IBOutlet weak var DiceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RollButtonPressed(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        print(randomDiceIndex1)
    print(randomDiceIndex2)
        DiceImageView1.image = UIImage(named: DiceArray[randomDiceIndex1])
    DiceImageView2.image = UIImage(named: DiceArray[randomDiceIndex2])
    }
    
}

