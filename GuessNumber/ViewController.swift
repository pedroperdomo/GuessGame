//
//  ViewController.swift
//  GuessNumber
//
//  Created by Pedro Perdomo on 10/12/15.
//  Copyright © 2015 Pedro Perdomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNumber: UILabel!
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var userNumber: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //inicializamos las cajas de texto
        randomNumber.text=""
        labelResult.text=""
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func generateRandom(sender: AnyObject) {
        //inicializamos las cajas de texto
        randomNumber.text=""
        labelResult.text=""

        
        var number:Int=0
        
        let random = Int(arc4random_uniform(6))
        
        number=random
        
        randomNumber.text="\(number)"
        
        if (userNumber.text == "\(number)" ){
            labelResult.text="You Win!!"
        }else{
            labelResult.text="You Lose!!"
          }
    }
}

