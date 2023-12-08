//
//  Z.hpp
//  Callbacks
//
//  Created by 池守和槻 on 2023/12/09.
//

#ifndef Z_hpp
#define Z_hpp

#include <stdio.h>

#include <Callbacks/Callbacks-Swift.h>


class CallbackBase {
 public:
  virtual ~CallbackBase() = default;
  virtual int greeting(int x) = 0;
};

#endif /* Z_hpp */
