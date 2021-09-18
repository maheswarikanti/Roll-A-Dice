//
//  ViewController.swift
//  Roll A Dice
//
//  Created by Maheswari Kanti on 9/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var lblScore: UILabel!
    
    var score=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func trestingAgain(_ sender: Any) {
        
        let one = rollADice()
        let two = rollADice()
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        img1.image = UIImage(named: imgOneName)
        img2.image = UIImage(named: imgTwoName)
        
        if one + two < 7 {
            score += 1
            }
        
        lblScore.text = "Score = \(score)"
    }
    
    @IBAction func lucky7Pressed(_ sender: Any) {
        
        let one = rollADice()
        let two = rollADice()
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        img1.image = UIImage(named: imgOneName)
        img2.image = UIImage(named: imgTwoName)
        
        if one + two == 7 {
            score += 7
            }
        
        lblScore.text = "Score = \(score)"
    }
    
    @IBAction func above7Pressed(_ sender: Any) {
        
        let one = rollADice()
        let two = rollADice()
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        img1.image = UIImage(named: imgOneName)
        img2.image = UIImage(named: imgTwoName)
        
        if one + two > 7 {
            score += 1
            }
        
        lblScore.text = "Score = \(score)"
    }
    
    func rollADice() -> Int {
        return Int.random(in: 1...6)
         
    }
}

