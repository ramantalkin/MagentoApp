//
//  ViewController.swift
//  MagentoAppIOS
//
//  Created by Sakal Andrej on 09.12.16.
//  Copyright © 2016 SakalAndrej. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var LeftScoreLaber: UILabel!
    @IBOutlet weak var RightScoreLabel: UILabel!
    var leftScore:Int = 0
    var rightScore:Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        
        //Random number for the left Card
        let leftNumber:Int = Int(arc4random_uniform(13))
        
        //Random number for the right card
        let rightNumber:Int = Int(arc4random_uniform(13))
        
        var cards = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
        
        //Show randomized Cards
        RightImageView.image = UIImage(named: cards[rightNumber])
        LeftImageView.image = UIImage(named: cards[leftNumber])
        
        
        if rightNumber > leftNumber {
            rightScore = rightScore + 1
            RightScoreLabel.text = String(rightScore)
        }
        else if rightNumber < leftNumber {
            leftScore = leftScore + 1
            LeftScoreLaber.text = String(leftScore)
        }

    }

}

