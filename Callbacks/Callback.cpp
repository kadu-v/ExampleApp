//
//  Callback.cpp
//  Callbacks
//
//  Created by 池守和槻 on 2023/12/09.
//

#include "Callback.hpp"
#include "CallbackCxx.hpp"
#include <Callbacks/Callbacks-Swift.h>

namespace Callbacks {
static CallbackCxx callbackCxx = CallbackCxx();

void set_callbacks(SwiftCallback* swift_callback) {
    callbackCxx.set_callback(swift_callback);
}

void clear_callbacks() {
    callbackCxx.clear_callback();
}

int execute_callbacks(int x) {
    return callbackCxx.greeting(x);
}
}
