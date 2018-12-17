import 'package:flutter/material.dart';
import 'dart:ui';

final device = MediaQuery.of(null);

class Adapt {
    static Adapt instance = new Adapt();

    static double _width;
    static double _height;
    static double _topbarH;
    static double _botbarH;
    static double _pixelRatio;
    static double _ratio;

    static init(BuildContext context, {int width}) {
        MediaQueryData mediaQuery = MediaQuery.of(context);
        _width = mediaQuery.size.width;
        _height = mediaQuery.size.height;
        _pixelRatio = mediaQuery.devicePixelRatio;
        _topbarH = mediaQuery.padding.top;
        _botbarH = mediaQuery.padding.bottom;
        _ratio = _width / width;
    }
    // 计算视觉图值
    static px(number){
        return number * _ratio;
    }
    // 像素比
    static ratio(){
        return _ratio;
    }
    // 1像素
    static onepx(){
        return 1/_pixelRatio;
    }
    // 屏幕宽度
    static swidth(){
        return _width;
    }
    // 屏幕高度
    static sheight(){
        return _height;
    }
    // 计算高度
    static getHeight(num){

        final barH = new Size.fromHeight(kToolbarHeight);
        final navHeight = new Size.fromHeight(kBottomNavigationBarHeight);
        print(navHeight);
       

        double rediceHeight = _topbarH + _botbarH + 600*_ratio;
       
        return _height - rediceHeight;
    }
}
