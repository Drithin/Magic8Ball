//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Drithin Chakravarthy on 10/14/17.
//  Copyright © 2017 Drithin Chakravarthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var randomballNum:Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton) {
        updateballImages()
    }
    
    
    
    let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        updateballImages()
    }
    
    func updateballImages(){
        
        randomballNum = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage.init(named: ballImageArray[Int(arc4random_uniform(5))])
       
        }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateballImages()
    }


}

