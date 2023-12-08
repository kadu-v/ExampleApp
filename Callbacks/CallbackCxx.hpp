//
//  Y.hpp
//  Callbacks
//
//  Created by 池守和槻 on 2023/12/09.
//

#ifndef Y_hpp
#define Y_hpp


#include <stdio.h>
#include <Callbacks/Callbacks-Swift.h>
#include "CallbackBase.hpp"


namespace Callbacks {

class CallbackCxx: CallbackBase {
public:
    CallbackCxx(SwiftCallback* swift_callback): swift_callback_(swift_callback) {};
    int greeting(int x) {
        return swift_callback_->greeting(x);
    }
private:
    SwiftCallback* swift_callback_;
};
}

#endif /* Y_hpp */
