import 'package:flutter/material.dart';
import '../../utils/adapt.dart';
import 'dart:ui';

// item
class Item extends StatelessWidget {
    Item({Key key,this.item}) : super(key: key);

    final Map item;

    @override
    Widget build(BuildContext context) {
        double wdith = Adapt.px(260);
        double height = Adapt.px(260);
        // item 左侧图片层叠
        List<Widget> stackImg = [new Image.network(item['pImg'],width:wdith,height:height,)];
        if(!item['label'].isEmpty){
            stackImg.add(new Positioned(
                left:Adapt.px(10),
                top:0,
                child: new Image.network(
                    'https://img.allpyra.com/7acb5470-9db5-4894-8859-daaaf9e65497.png',
                    width:Adapt.px(60),
                    height:Adapt.px(68),
                ),
            ));
            stackImg.add(new Positioned(
                left:Adapt.px(20),
                top:Adapt.px(10),
                child: new Text(item['label'],style:TextStyle(color: Colors.white,fontSize: Adapt.px(20))),
            ));
        }
        return new GestureDetector(
            onTap:(){
                print('go to goods detail!');
            },
            child: new Container(
                decoration: new BoxDecoration(
                    border: new Border(bottom:BorderSide(width: Adapt.onepx(),color:item['isLastOne'] ? Colors.white:Colors.grey[300])),
                ),
                padding:EdgeInsets.only(left:Adapt.px(20),top:Adapt.px(30),right:Adapt.px(20),bottom:Adapt.px(30)),
                child:new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        new Container(
                            margin: EdgeInsets.only(right:Adapt.px(20)),
                            width:wdith,
                            height:height,
                            child: new Stack(
                                children: stackImg,
                            ), 
                        ),
                        new Container(
                            width:Adapt.px(425),
                            height:height,
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    new Container(
                                        height:Adapt.px(80),
                                        child: new Text(
                                            item['title'],
                                            maxLines: 2,
                                            overflow: TextOverflow.clip,
                                            style:TextStyle(
                                                fontSize: Adapt.px(30),
                                            )
                                        ),
                                    ),
                                    item['desc'].isEmpty ?
                                        new Container(
                                            height:Adapt.px(60),
                                        )
                                    :   new Container(
                                        height:Adapt.px(60),
                                        alignment: Alignment.centerLeft,
                                        child: new Text(
                                            item['desc'],
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style:TextStyle(
                                                fontSize: Adapt.px(22),
                                                color:Color.fromARGB(155, 155, 155, 155),
                                            )
                                        ),
                                    ),
                                    new Row(
                                        children: <Widget>[
                                            new Text("累计销${item['totalCount']}份",style:TextStyle(color: Colors.red,fontSize: Adapt.px(22))),
                                            new Text("/剩余${item['haveCount']}份",style:TextStyle(fontSize: Adapt.px(22))),
                                        ],
                                    ),
                                    new Container(
                                        margin:EdgeInsets.only(top:Adapt.px(10)),
                                        child:new Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                                new Row(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                        new Text("¥${item['realPrice']} ",style:TextStyle(
                                                            fontSize: Adapt.px(36),
                                                            color: Colors.red,
                                                        )),
                                                        new Text("¥${item['costPrice']}",style:TextStyle(
                                                            fontSize: Adapt.px(24),
                                                            color:Colors.grey,
                                                            decoration: TextDecoration.lineThrough,
                                                            decorationStyle: TextDecorationStyle.solid,
                                                            decorationColor: Colors.grey,
                                                        )),
                                                    ],
                                                ),
                                                new Container(
                                                    width:Adapt.px(60),
                                                    height:Adapt.px(60),
                                                    margin:EdgeInsets.only(top:Adapt.px(15)),
                                                    child: RaisedButton(
                                                        padding:EdgeInsets.all(Adapt.px(10)),
                                                        color: Colors.red,
                                                        child: new Icon(Icons.shopping_cart,color:Colors.white,size:Adapt.px(30)),
                                                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(Adapt.px(30),)),
                                                        onPressed: () {
                                                            print(new Size.fromHeight(kToolbarHeight));
                                                            print(MediaQueryData.fromWindow(window));
                                                            print(MediaQuery.of(context));
                                                            print(item);
                                                        },
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        ); 
    }
}

