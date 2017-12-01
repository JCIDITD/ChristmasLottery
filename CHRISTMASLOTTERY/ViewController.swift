//
//  ViewController.swift
//  CHRISTMASLOTTERY
//
//  Created by Tengoku no Spoa on 2017/12/1.
//  Copyright © 2017年 Tengoku no Spoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    @IBAction func runButtonDidPressed(_ sender: UIButton) {
        let randomNumber1 = generateRandomNumber()
        let randomNumber2 = generateRandomNumber()
        let randomNumber3 = generateRandomNumber()
        Label.text = "\(randomNumber1) \(randomNumber2) \(randomNumber3)"
        
    }
    
    func generateRandomNumber() -> Int{
        var randomNum = Int(arc4random()%10)
        while randomNum == 10{
            randomNum = Int(arc4random()%10)
        }
        return randomNum
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

