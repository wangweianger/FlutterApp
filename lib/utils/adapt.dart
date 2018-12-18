import 'package:flutter/material.dart';
import 'config.dart';
import 'dart:ui';

class Adapt {

    static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
    static double _width = mediaQuery.size.width;
    // static double _height = mediaQuery.size.height;
    // static double _topbarH = mediaQuery.padding.top;
    // static double _botbarH = mediaQuery.padding.bottom;
    static double _pixelRatio = mediaQuery.devicePixelRatio;
    static double _ratio = _width / designWidth;

    // 计算视觉图值
    static px(number){
        return number * _ratio;
    }
    // 1像素
    static onepx(){
        return 1/_pixelRatio;
    }
}
