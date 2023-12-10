//
//  UserCallback.swift
//  ExampleApp
//
//  Created by 池守和槻 on 2023/12/09.
//

import Callbacks
import Foundation

class UserCallback: SwiftCallback {
    var list: [UInt8] = Array(repeating: 100, count: 1000) // 1KB

    public func f() {
        print("[UserCallback]: Other method of UserCallback")
    }

    override func greeting(x: Int) -> Int32 {
        print("[UserCallback]: called user defined callback function: \(x)")
        self.f()
        return Int32(x)
    }
}
