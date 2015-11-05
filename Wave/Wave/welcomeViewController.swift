//
//  welcomeViewController.swift
//  Wave
//
//  Created by Smallulu on 15/11/2.
//  Copyright @ 2015 evtechnologies. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController, BWWalkthroughViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: "timeToMoveOn", userInfo: nil, repeats: false)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timeToMoveOn() {
        print("show walk through pages")
        
        // Get view controllers and build the walkthrough
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let walkthrough = stb.instantiateViewControllerWithIdentifier("walk0") as! BWWalkthroughViewController
        let page_one = stb.instantiateViewControllerWithIdentifier("walk1") as UIViewController
        let page_two = stb.instantiateViewControllerWithIdentifier("walk2") as UIViewController
        let page_three = stb.instantiateViewControllerWithIdentifier("walk3") as UIViewController
        
        // Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.addViewController(page_one)
        walkthrough.addViewController(page_two)
        walkthrough.addViewController(page_three)
        
        self.presentViewController(walkthrough, animated: true, completion: nil)
    }
}

