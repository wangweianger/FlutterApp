import 'package:flutter/material.dart';
import '../../utils/adapt.dart';

class Item extends StatefulWidget {
    Item({Key key, this.item}) : super(key: key);

    final Map item;

	@override
	State<Item> createState() => new __ItemState();
}
class __ItemState extends State<Item>{
    Map item = {};

    @override
    void initState() {
        super.initState();
        item = widget.item;
    }

    @override
    Widget build(BuildContext context) {
        return new Container(
            padding:EdgeInsets.all(Adapt.px(30)),
            child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    new GestureDetector(
                        onTap: (){},
                        child: new Image.network(
                            'https://img.allpyra.com/17763f04-254b-46ae-9cec-a5e48ab14394.png?imageslim',
                            width:Adapt.px(46),
                            height:Adapt.px(46),
                        ),
                    ),
                    new GestureDetector(
                        onTap: (){},
                        child: new Container(
                            margin:EdgeInsets.only(left:Adapt.px(10),right:Adapt.px(15)),
                            child: new Image.network(
                                item['pImgIndex'],
                                width:Adapt.px(200),
                                height:Adapt.px(200),
                                fit: BoxFit.cover,
                            ),
                        ),
                    ),
                    Expanded(
                        child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                new GestureDetector(
                                    onTap: (){},
                                    child: new Text(
                                        '${item['pName']}',
                                        style: TextStyle(
                                            fontSize: Adapt.px(30),
                                            color:Colors.black,
                                        ),
                                    ),
                                ),
                                new Container(
                                    height:Adapt.px(40),
                                    margin:EdgeInsets.only(top:Adapt.px(24),bottom:Adapt.px(24)),
                                    child: new Text(
                                        '${item['paramNames']}',
                                        style: TextStyle(
                                            color:Colors.grey[600],
                                            fontSize: Adapt.px(24),
                                        ),
                                    ),
                                ),
                                new Row(
                                    children: <Widget>[
                                        new Text(
                                            '¥${item['realPrice']}',
                                            style: TextStyle(
                                                color:Colors.red,
                                                fontSize: Adapt.px(36),
                                            ),
                                        ),
                                        new Container(
                                            margin:EdgeInsets.only(left:Adapt.px(15),right:Adapt.px(55)),
                                            child: new Text(
                                                '¥${item['originalPrice']}',
                                                style: TextStyle(
                                                    color:Colors.grey[600],
                                                    fontSize: Adapt.px(24),
                                                    decoration: TextDecoration.lineThrough,
                                                    decorationStyle: TextDecorationStyle.solid,
                                                    decorationColor: Colors.grey,
                                                ),
                                            ),
                                        ),
                                        new GestureDetector(
                                            onTap: (){},
                                            child: new Image.network(
                                                'https://img.allpyra.com/72adf8f0-ccd3-4a23-afe8-d7512af82f64.png?imageslim',
                                                width:Adapt.px(40),
                                                height:Adapt.px(40),
                                            ),
                                        ),
                                        new Container(
                                            width:Adapt.px(50),
                                            alignment: Alignment.center,
                                            child: new Text(
                                                '${item['quantity']}',
                                                style: TextStyle(
                                                    fontSize: Adapt.px(30),
                                                ),
                                            ),
                                        ),
                                        new GestureDetector(
                                            onTap: (){},
                                            child: new Container(
                                                margin: EdgeInsets.only(right:Adapt.px(10)),
                                                child: new Image.network(
                                                    'https://img.allpyra.com/0b8c2f90-3267-4eef-a8b5-fe5052de7896.png?imageslim',
                                                    width:Adapt.px(40),
                                                    height:Adapt.px(40),
                                                ),
                                            ),
                                        ),
                                        new GestureDetector(
                                            onTap: (){},
                                            child: new Image.network(
                                                'https://img.allpyra.com/eefc448d-211e-4794-b32d-78518c89bb73.png?imageslim',
                                                width:Adapt.px(40),
                                                height:Adapt.px(40),
                                            ),
                                        ),
                                    ],
                                ),
                            ],
                        ),
                    ),
                ],
            )
        );
    }
}

