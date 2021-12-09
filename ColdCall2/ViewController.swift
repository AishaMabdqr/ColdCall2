//
//  ViewController.swift
//  ColdCall2
//
//  Created by A Ab. on 05/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var number: UILabel!
    
    let names = ["Aisha", "Hessah", "Abdullah", "Ahmad", "Abdulrahman", "Sarah"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        name.text = "Ready?"
        number.isHidden = true
    }

   
    @IBAction func chooseRandom(_ sender: UIButton) {
        let randomName = Int.random(in: 0...4)
        name.text = names[randomName]
        
        let randomNum = Int.random(in: 1...5)
        if (randomNum == 1 || randomNum == 2){
            number.text = String(randomNum)
            number.textColor = .red
            
            
        }
        else if (randomNum == 3 || randomNum == 4){
            number.text = String(randomNum)
            number.textColor = .orange
            
        }
        else if (randomNum == 5 ){
            number.text = String(randomNum)
            number.textColor = .green
            
        }
        number.isHidden = false
    }
    
}

