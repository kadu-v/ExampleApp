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
void set_callbacks(SwiftCallback* swift_callback) {
    CallbackCxx callback = CallbackCxx(swift_callback);
    callback.greeting(404);
}

void clear_callbacks() {}
}
