//
//  ViewController.swift
//  Dicee
//
//  Created by Ranajit on 17/01/20.
//  Copyright © 2020 Ranajit Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var randomDiceIndex1 : Int=0
    var randomDiceIndex2 : Int=0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))

        diceImageViewOne.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageViewTwo.image = UIImage(named: diceArray[randomDiceIndex2])
        print(randomDiceIndex1)
        print(randomDiceIndex2)
    }
}
