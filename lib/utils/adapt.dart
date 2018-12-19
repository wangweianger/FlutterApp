import 'package:flutter/material.dart';
import 'config.dart';
import 'dart:ui';

class Adapt {
    static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
    static double _width = mediaQuery.size.width;
    static double _height = mediaQuery.size.height;
    static double _topbarH = mediaQuery.padding.top;
    static double _botbarH = mediaQuery.padding.bottom;
    static double _pixelRatio = mediaQuery.devicePixelRatio;
    static var _ratio;
    static init(int number){
        int uiwidth = number is int ? number : designWidth;
        _ratio = _width / uiwidth;
    }
    static px(number){
        if(!(_ratio is double || _ratio is int)){Adapt.init(designWidth);}
        return number * _ratio;
    }
    static onepx(){
        return 1/_pixelRatio;
    }
    static screenW(){
        return _width;
    }
    static screenH(){
        return _height;
    }
    static padTopH(){
        return _topbarH;
    }
    static padBotH(){
        return _botbarH;
    }
}
