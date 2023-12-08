//
//  ViewController.swift
//  ExampleApp
//
//  Created by 池守和槻 on 2023/12/09.
//

import Callbacks
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let userCallback = UserCallback(x: 2)
        Callbacks.setCallbacks(userCallback)
        // Do any additional setup after loading the view.
    }
}
