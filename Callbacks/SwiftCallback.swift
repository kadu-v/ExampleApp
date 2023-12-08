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

    open func greeting(x: Int32) -> Int32 {
        fatalError("Must be override this function")
    }
}

public func setCallbacks(_ callback: SwiftCallback) {
    let unsafePointer = UnsafeMutablePointer<SwiftCallback>.allocate(capacity: 1)
    unsafePointer.initialize(to: callback)
    let pointer = UnsafePointer(unsafePointer)
    let opaque = OpaquePointer(pointer)
    Callbacks.clear_callbacks()
    Callbacks.set_callbacks(opaque)
}
