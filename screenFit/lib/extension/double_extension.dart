import 'package:flutter/material.dart';
import '../screen_size_fit.dart';

extension SYDoubleExtension on double {
  get px {
    return SYScreenSizeFit.setPx(this);
  }

  get rpx {
    return SYScreenSizeFit.setRpx(this);
  }
}