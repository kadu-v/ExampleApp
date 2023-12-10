//
//  X.swift
//  Callbacks
//
//  Created by 池守和槻 on 2023/12/09.
//

import Foundation

open class SwiftCallback {
    public var x: Int
    public init(x: Int) {
        self.x = x
    }

    deinit {
        print("[SwiftCallback]: Drop SwiftCallback class object, here")
    }

    open func greeting(x: Int) -> Int32 {
        fatalError("[SwiftCallback]: Must be override this function")
    }
}

public func setCallbacks(_ callback: SwiftCallback) {
    let unsafePointer = UnsafeMutablePointer<SwiftCallback>.allocate(capacity: 1)
    unsafePointer.initialize(to: callback)
    let pointer = UnsafePointer(unsafePointer)
    let opaque = OpaquePointer(pointer)
    Callbacks.set_callbacks(opaque)
}

public func executeCallbacks(_ x: Int) {
    Callbacks.execute_callbacks(Int32(x))
}

public func clearCallbacks() {
    Callbacks.clear_callbacks()
}
