//
//  ViewController.swift
//  HelloWorld
//
//  Created by Vineeth Raghunath on 5/2/17.
//  Copyright © 2017 Vineeth Raghunath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var welcomeBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func welcomePress(_ sender: Any) {
        titleImage.isHidden = false
        background.isHidden = false
        welcomeBtn.isHidden = true
    }
}

