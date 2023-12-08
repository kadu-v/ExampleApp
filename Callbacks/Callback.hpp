//
//  Callback.hpp
//  Callbacks
//
//  Created by 池守和槻 on 2023/12/09.
//

#ifndef Callback_hpp
#define Callback_hpp

#include <stdio.h>
namespace Callbacks {
class SwiftCallback;

void set_callbacks(SwiftCallback* swift_callback);
void clear_callbacks();
}
#endif /* Callback_hpp */
