import 'package:flutter/material.dart';
import '../../utils/adapt.dart';

// --------------- 头部地址信息 -------------
class Address extends StatefulWidget {
    @override
    State<Address> createState() => new _AddressState();
}
class _AddressState extends State<Address> {
    @override
    Widget build(BuildContext context) {
        String address = '深圳软件产业基地易思博大厦19-21楼';

        return new Container(
            height:Adapt.px(80),
            padding:EdgeInsets.only(left:Adapt.px(30),right:Adapt.px(30)),
            alignment: Alignment.centerLeft,
            child:new Row(
                children: <Widget>[
                    new Image.network(
                        'https://img.allpyra.com/225d2135-b3b3-40c6-8e4b-3c820dceb2fe.png?imageslim',
                        width:Adapt.px(35),
                        height:Adapt.px(35),
                    ),
                    new Container(
                        width:Adapt.px(320),
                        child: new Text(
                            address,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                                fontSize:Adapt.px(28),
                                fontWeight:FontWeight.w500, 
                            ),
                        ),
                    ),
                    new Expanded(
                        child: new Container(
                            margin:EdgeInsets.only(left:Adapt.px(10)),
                            height:Adapt.px(60),
                            decoration: new BoxDecoration(
                                border: new Border.all(color:Colors.red,style:BorderStyle.solid),
                                borderRadius: BorderRadius.circular(Adapt.px(60))
                            ),
                            child:TextField(
                                autofocus: false,
                                style:TextStyle(color:Colors.red,fontSize: Adapt.px(24)),
                                decoration: InputDecoration(
                                    hintText: "搜索商品",
                                    hintStyle: TextStyle(color:Colors.red,fontSize: Adapt.px(24)),
                                    prefixIcon: Icon(Icons.search,color:Colors.red),
                                    contentPadding:EdgeInsets.all(Adapt.px(8)),
                                    border:InputBorder.none
                                ),
                            ),
                        ),
                    )
                ],
            ),
        );
    }
}