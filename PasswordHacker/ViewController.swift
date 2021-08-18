//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 高橋　龍 on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password:Int = 5234

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start() {
        for i in 0...9999 {
            
            countLabel.text = String(i)
            
            //処理を0.0005待機させる処理
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if i == password {
//                print("正解は\(i)です！")
                var digits = [Int]()
                
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
            }
        }
//        if password == 0000 {
//            print("正解0000です！")
//        }else if password == 0001 {
//            print("正解0001です！")
//        }else if password == 0002 {
//            print("正解0002です！")
//        }else if password == 0003 {
//            print("正解0003です！")
//        }else if password == 0004 {
//            print("正解0004です！")
//        }else if password == 0005 {
//            print("正解0005です！")
//        }else if password == 0006 {
//            print("正解0006です！")
//        }
    }
    
    @IBAction func reset() {
        
        password = 5234
        
        countLabel.text = "「START」ボタンを押して解析開始"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }
    
}

