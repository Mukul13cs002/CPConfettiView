//
//  ViewController.swift
//  CPConfettiViewExample
//
//  Created by framgia on 3/3/17.
//  Copyright © 2017 Vo Nguyen Chi Phuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var confettiView: CPConfettiView!
    @IBOutlet private weak var directionSegment: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func edditingChangValueComment(sender: UITextField) {
        guard let text = sender.text else {
            return
        }
        confettiView.direction = directionSegment.selectedSegmentIndex == 0 ? .Top : .Bottom
        confettiView.intensity = 0.5
        if text == "heart" {
            confettiView.setImageForConfetti(image: UIImage(named:"heart")!)
            confettiView.startConfetti(duration:3)
        } else if text == "beer" {
            confettiView.setImageForConfetti(image: UIImage(named:"beer")!)
            confettiView.startConfetti(duration:3)
        }
    }
}

