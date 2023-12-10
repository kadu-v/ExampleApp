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

        while true {
            executeCallbacks(404)

            setCallbackFromSwift()
            executeCallbacks(505)
            clearCallbacks()

            setCallbackFromSwift()
            executeCallbacks(506)
            clearCallbacks()

            executeCallbacks(404)
        }
        // Do any additional setup after loading the view.
    }

    func setCallbackFromSwift() {
        let userCallback = UserCallback(x: 2)
        setCallbacks(userCallback)
    }
}
