import 'package:flutter/material.dart';

// item
class Item extends StatelessWidget {
    Item({Key key,this.item}) : super(key: key);

    final Map item;

    @override
    Widget build(BuildContext context) {
        return new Container(
            padding:EdgeInsets.all(10.0),
            child:new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    new Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: new Image.network(
                            item['pImg'],
                            width:120.0,
                            height:120.0,
                        ),
                    ),
                    new Container(
                        width:250.0,
                        height:120.0,
                        child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                new Container(
                                    height:45.0,
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: new Text(
                                        item['title'],
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style:TextStyle(
                                            fontSize: 18.0,
                                        )
                                    ),
                                ),
                                new Container(
                                    child: new Text(
                                        item['desc'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                ),
                                new Row(
                                    children: <Widget>[
                                        new Text("累计销${item['totalCount']}份/"),
                                        new Text("剩余${item['haveCount']}份"),
                                    ],
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        );
    }
}

