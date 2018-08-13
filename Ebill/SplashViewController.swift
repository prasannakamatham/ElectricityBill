//
//  ViewController.swift
//  Ebill
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        perform(#selector(self.showNavController), with: nil, afterDelay: 5)
    }
    
    
    @objc func showNavController()
    {
       print("hi")
       performSegue(withIdentifier: "splashToLogin", sender: self)
    }
   /* override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    
        
    }*/
    
}

