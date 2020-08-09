//
//  ViewController.swift
//  I Am Rich
//
//  Created by CHONG LIU on 8/8/20.
//  Copyright © 2020 ChongMelit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var centerImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        singleTap.numberOfTapsRequired = 1
        singleTap.numberOfTouchesRequired = 1
        centerImageView.addGestureRecognizer(singleTap)
    }
    
    @objc func imageTapped() {
        if titleLabel.text == "Monopoly" {
            titleLabel.text = "Amex Platinum"
            centerImageView.image = UIImage(named: "Amex Platinum")
        } else {
            titleLabel.text = "Monopoly"
            centerImageView.image = UIImage(named: "Monopoly")
        }
    }
    


}

