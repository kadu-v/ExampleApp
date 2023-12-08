//
//  UserCallback.swift
//  ExampleApp
//
//  Created by 池守和槻 on 2023/12/09.
//

import Callbacks
import Foundation

class UserCallback: SwiftCallback {
    override func greeting(x: Int32) -> Int32 {
        print("called user defined callback function")
        return Int32(x)
    }
}
