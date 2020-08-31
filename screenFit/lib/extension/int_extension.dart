import 'package:flutter/material.dart';
import '../screen_size_fit.dart';

extension SYIntExtension on int {
  get px {
    return SYScreenSizeFit.setPx(this.toDouble());
  }

  get rpx {
    return SYScreenSizeFit.setRpx(this.toDouble());
  }
}
