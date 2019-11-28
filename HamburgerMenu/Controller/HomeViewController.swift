//
//  HomeViewController.swift
//  HamburgerMenu
//
//  Created by Dheeraj Arora on 11/11/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var myView: UIView!
    var menuOut = false
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        myView.addGestureRecognizer(tap)
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        if menuOut == true{
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
            menuOut = false
        }
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationCompletion) in
            //print("the animation is completed")
        }
    }
    @IBAction func menuTappedAction(_ sender: UIBarButtonItem) {
        if menuOut == false{
            leadingConstraint.constant = 200
            trailingConstraint.constant = -200
            menuOut = true
        }else{
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
            menuOut = false
        }
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationCompletion) in
            //print("the animation is completed")
        }
    }
    
    @IBAction func goToFirstVC(_ sender: UIButton) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    @IBAction func goToSecondVC(_ sender: UIButton) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}
