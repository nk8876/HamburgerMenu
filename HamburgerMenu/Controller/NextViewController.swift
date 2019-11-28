//
//  NextViewController.swift
//  HamburgerMenu
//
//  Created by Dheeraj Arora on 11/11/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func goToHomeAction(_ sender: UIButton) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    
}
