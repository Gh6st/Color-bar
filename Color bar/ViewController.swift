//
//  ViewController.swift
//  Color bar
//
//  Created by Chris Toppin on 6/9/18.
//  Copyright © 2018 Gaming Arts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Blinker: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animateText()
        Blinker.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
        func animateText() {
            UIView.animate(withDuration: 0.5, animations: {self.Blinker.alpha = 0.5})
            {_ in
                UIView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions.curveLinear, animations: {self.Blinker.alpha = 0})
                    
                    self.animateText()
                
    }
        
    }
    
}

/*   func animateText() {
 UIView.animate(withDuration: 0.5, animations: {self.Blinker.alpha = 0.5})
 {_ in
 UIView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions.curveLinear, animations: {self.Blinker.alpha = 0})
 
 self.animateText()
 
*/
