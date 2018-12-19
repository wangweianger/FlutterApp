import 'package:flutter/material.dart';
import '../../utils/adapt.dart';
import 'data.dart';

// --------------- 头部地址信息 -------------
class TopNav extends StatefulWidget {
    @override
    State<TopNav> createState() => new _TopNavState();
}
class _TopNavState extends State<TopNav> {
    @override
    Widget build(BuildContext context) {
        return Container(
            height:Adapt.px(65),
            alignment: Alignment.centerLeft,
            padding:EdgeInsets.only(left:Adapt.px(30),right:Adapt.px(30)),
            decoration: new BoxDecoration(
                border: new Border(bottom:BorderSide(width: Adapt.onepx(),color:Colors.grey[300])),
            ),
            child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topNavList.length,
                itemBuilder: (context, i){
                    return new Container(
                        height:Adapt.px(65),
                        padding: EdgeInsets.all(Adapt.px(10)),
                        margin:EdgeInsets.only(right:10),
                        decoration: new BoxDecoration(
                            border: new Border(bottom:BorderSide(width: 3,color:topNavList[i]['isActive'] ? Colors.red : Colors.transparent)),
                        ),
                        child: new GestureDetector(
                            onTap: (){
                                setState(() {
                                    topNavList.forEach((item){
                                        item['isActive'] = false;
                                    });
                                    topNavList[i]['isActive'] = true;
                                });
                            },
                            child: new Text(
                                topNavList[i]['name'],
                                style: TextStyle(
                                    fontSize: Adapt.px(30),
                                    color:topNavList[i]['isActive'] ? Colors.red : Colors.grey[600],
                                ),
                            )
                        ),
                    );
                }
            ),
        );
    }
}
