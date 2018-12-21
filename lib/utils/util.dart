import 'package:flutter/material.dart';
import 'adapt.dart';

// Loading 组件
class Loading extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Center(
            child: new Container(
                child: new Text(
                    '数据加载中...',
                    style:TextStyle(
                        fontSize: Adapt.px(35),
                    )
                ),
            ),
        );
    }
}

// 空数据组件
class Empty extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Center(
            child: new Container(
                child: new Text(
                    '暂无数据！',
                    style:TextStyle(
                        fontSize: Adapt.px(35),
                    )
                ),
            ),
        );
    }
}
