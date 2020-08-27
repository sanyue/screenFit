import 'dart:ui';

class SYScreenSizeFit {
  // 基本信息
  static double physicalWidth;  // 屏幕实际像素宽度(eg:iPhone6 = 750)
  static double physicalHeight; // 屏幕实际像素高度
  static double screenWidth;    // 屏幕实际宽度(eg: iPhone6 =375)
  static double screenHeight;   // 屏幕实际高度
  static double dpr;            // 设备像素比
  static double statusHeight;   // 状态栏高度
  static double bottomHeight;   // 距离底部高度

  static double rpx;            // 参照微信小程序屏幕适配
  static double px;

  static void initialize({double standardSize = 750}) {
    // 1.手机的物理分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    // 2.获取dpr
    dpr = window.devicePixelRatio;

    // 3.宽度和高度
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;

    // 4.状态栏高度
    statusHeight = window.padding.top / dpr;

    // 5.距离底部高度
    bottomHeight = window.padding.bottom;

    // 6.计算rpx、px的大小
    rpx = screenWidth / standardSize;
    px = screenWidth / standardSize * 2;

  }

  static double setRpx(double size){
    return rpx * size;
  }

  static double setPx(double size){
    return px * size;
  }
}


/*
         设备            rpx换算px(屏幕宽度/750)     px换算rpx(750/屏幕宽度)        宽*高
         iPhone5              1rpx = 0.42px              1px = 2.34rpx        320 * 568
         iPhone6              1rpx = 0.5px               1px = 2 rpx          375 * 667
         iPhone6 Plus         1rpx = 0.552px             1px = 1.81rpx        414 * 736
 */