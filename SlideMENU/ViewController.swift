//
//  ViewController.swift
//  SlideMENU
//
//  Created by Михалев Александр on 05/04/2018.
//  Copyright © 2018 RP Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SlideMenu: NSLayoutConstraint!
    
    var isMenuHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SlideMenu.constant = -240 // hide
    }

    @IBAction func MenuButtonPressed(_ sender: UIBarButtonItem) {
        if isMenuHidden {
            SlideMenu.constant = 0
            UIView.animate(withDuration: 0.4, animations: { self.view.layoutIfNeeded() })
        } else {
            SlideMenu.constant = -240
            UIView.animate(withDuration: 0.4, animations: { self.view.layoutIfNeeded() })
        }
        isMenuHidden = !isMenuHidden // invert
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

