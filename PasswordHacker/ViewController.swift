//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 堀弘昌 on 2022/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password:Int = 8931

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start(){
        
        for i in 0...9999 {
            countLabel.text = String(i)
            
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if i == password{
                print("正解は\(i)です！")
            }
        }
        
    }
    
    @IBAction func reset(){
        
    }
}

