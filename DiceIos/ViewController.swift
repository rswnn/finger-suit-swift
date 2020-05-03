//
//  ViewController.swift
//  DiceIos
//
//  Created by riswan ardiansah on 5/2/20.
//  Copyright © 2020 riswan ardiansah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var status: UILabel!
    
    
    var leftDiceNumber = 1
    var rigthDiceNumber = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func onPressRoll(_ sender: UIButton) {
        
        var diceArray = [ #imageLiteral(resourceName: "gajah"), #imageLiteral(resourceName: "orang"), #imageLiteral(resourceName: "semut")]
        
        leftDiceNumber = Int.random(in: 0...2)
        rigthDiceNumber = Int.random(in: 0...2)
        
        if leftDiceNumber > rigthDiceNumber {
            status.text? = "player 2 Menang"
        } else if rigthDiceNumber > leftDiceNumber {
           status.text? = "player 1 menang"
        } else {
            status.text? = "Draaaaaaaw"
        }
        
        leftDiceImageView.image = diceArray[leftDiceNumber]
        diceImageView2.image = diceArray[rigthDiceNumber]
        
       
    }
    
}

