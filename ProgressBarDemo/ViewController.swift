//
//  ViewController.swift
//  ProgressBarDemo
//
//  Created by Bhavin Suthar on 29/01/19.
//  Copyright © 2019 cazzy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var horizProj1: HorizontalProgressBar!
    @IBOutlet weak var horizProg2: HorizontalProgressBar!
    @IBOutlet weak var horizProj3: HorizontalProgressBar!
    
    @IBOutlet weak var horizProj4: HorizontalProgressBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        var i_progress = 0.0
        
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {_ in
          
            if i_progress >= 0.9 {
                i_progress = 0.0
            }
           
            i_progress += 0.1
            
           self.horizProj1.progress = CGFloat(i_progress)
            
            DispatchQueue.main.asyncAfter(deadline: .now()+1.0, execute: {
                self.horizProg2.progress = CGFloat(i_progress)
                DispatchQueue.main.asyncAfter(deadline: .now()+2.0, execute: {
                    self.horizProj3.progress = CGFloat(i_progress)
                    DispatchQueue.main.asyncAfter(deadline:.now()+3.0 , execute: {
                        self.horizProj4.progress = CGFloat(i_progress)
                    })
                })
                
            })
            
            

            
            
            
        })
    }


}

