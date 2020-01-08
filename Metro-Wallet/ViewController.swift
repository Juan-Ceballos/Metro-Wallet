//
//  ViewController.swift
//  Metro-Wallet
//
//  Created by Matthew Ramos on 11/28/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var metroCardImage: UIImageView!
    @IBOutlet var cardSwipeRecognizer: UISwipeGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardSwipeRecognizer.direction = .down
        
    }

    @IBAction func cardSwiped(_ sender: UISwipeGestureRecognizer) {
        if cardSwipeRecognizer.state == .ended {
            UIView.animate(withDuration: 0.5, animations: {
                self.metroCardImage.frame.origin.y += 150
                    }, completion: nil)
    }
    }
    
}

