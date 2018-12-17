import 'package:flutter/material.dart';

// item
class Item extends StatelessWidget {
    Item({Key key,this.item}) : super(key: key);

    final Map item;

    @override
    Widget build(BuildContext context) {
        double wdith = 140.0;
        double height = 140.0;
        // item 左侧图片层叠
        List<Widget> stackImg = [new Image.network(item['pImg'],width:wdith,height:height,)];
        if(!item['label'].isEmpty){
            stackImg.add(new Positioned(
                left:10.0,
                top:0,
                child: new Image.network(
                    'https://img.allpyra.com/7acb5470-9db5-4894-8859-daaaf9e65497.png',
                    width:40.0,
                    height:44.0,
                ),
            ));
            stackImg.add(new Positioned(
                left:16.0,
                top:6.0,
                child: new Text(item['label'],style:TextStyle(color: Colors.white,fontSize: 14.0)),
            ));
        }
        return new Container(
            decoration: new BoxDecoration(
                border: new Border(bottom:BorderSide(width: 0.5,color:item['isLastOne'] ? Colors.white:Colors.grey[300])),
            ),
            padding:EdgeInsets.only(left:10.0,top:20.0,right:10.0,bottom:20.0),
            child:new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    new Container(
                        margin: EdgeInsets.only(right:15.0),
                        width:wdith,
                        height:height,
                        child: new Stack(
                            children: stackImg,
                        ), 
                    ),
                    new Container(
                        width:230.0,
                        height:height,
                        child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                new Container(
                                    height:30.0,
                                    child: new Text(
                                        item['title'],
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style:TextStyle(
                                            fontSize: 18.0,
                                        )
                                    ),
                                ),
                                item['desc'].isEmpty ?
                                    new Container(
                                        height:40.0,
                                    )
                                :   new Container(
                                    height:40.0,
                                    alignment: Alignment.centerLeft,
                                    child: new Text(
                                        item['desc'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                ),
                                new Row(
                                    children: <Widget>[
                                        new Text("累计销${item['totalCount']}份",style:TextStyle(color: Colors.red)),
                                        new Text("/剩余${item['haveCount']}份"),
                                    ],
                                ),
                                new Container(
                                    margin:EdgeInsets.only(top:10),
                                    child:new Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                            new Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: <Widget>[
                                                    new Text("¥${item['realPrice']} ",style:TextStyle(
                                                        fontSize: 25.0,
                                                        color: Colors.red,
                                                    )),
                                                    new Text("¥${item['costPrice']}",style:TextStyle(
                                                        fontSize: 15.0,
                                                        color:Colors.grey,
                                                        decoration: TextDecoration.lineThrough,
                                                        decorationStyle: TextDecorationStyle.solid,
                                                        decorationColor: Colors.grey,
                                                    )),
                                                ],
                                            ),
                                            new Container(
                                                width:40.0,
                                                height:40.0,
                                                child: RaisedButton(
                                                    padding:EdgeInsets.all(10.0),
                                                    color: Colors.red,
                                                    child: new Icon(Icons.shopping_cart,color:Colors.white),
                                                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                                    onPressed: () {
                                                        print(MediaQuery.of(context).size.width);
                                                        print(MediaQuery.of(context).size.height);
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
        );
    }
}

