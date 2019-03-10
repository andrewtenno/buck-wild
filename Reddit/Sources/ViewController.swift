//
//  ViewController.swift
//  Reddit
//
//  Created by Andrew Tenno on 3/9/19.
//  Copyright © 2019 Andrew Tenno. All rights reserved.
//

import UIKit
import RedditAPI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.view.backgroundColor = .red

        let gildings = Gildings(silver: 0, gold: 1, platinum: 2)
    }


}
