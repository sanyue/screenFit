import 'package:flutter/material.dart';
import 'screen_size_fit.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SYScreenSizeFit.initialize();
    return MaterialApp(
      home: SYHomePage(),
    );
  }
}

class SYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter!'),
      ),
      body: SYHomeContent(),
    );
  }
}

class SYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('screenWidth:${SYScreenSizeFit.screenWidth}');
    print('screenHeight:${SYScreenSizeFit.screenHeight}');
    print('statusHeight:${SYScreenSizeFit.statusHeight}');
    print('bottomHeight:${SYScreenSizeFit.bottomHeight}');
    print('rpx:${SYScreenSizeFit.rpx}');
    print('px:${SYScreenSizeFit.px}');
    return Center(
      child: Container(
        width: SYScreenSizeFit.setPx(200),
        height: SYScreenSizeFit.setPx(200),
        color: Colors.red,
        alignment: Alignment.center,
        child: Text('屏幕适配',style: TextStyle(fontSize: SYScreenSizeFit.setPx(24),color: Colors.white),),
      ),
    );
  }
}

