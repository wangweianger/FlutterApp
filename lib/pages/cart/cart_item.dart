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
        return new Row(
            children: <Widget>[
                new Image.network(
                    'https://img.allpyra.com/17763f04-254b-46ae-9cec-a5e48ab14394.png?imageslim',
                    width:Adapt.px(46),
                    height:Adapt.px(46),
                ),
                new Image.network(
                    item['pImgIndex'],
                    width:Adapt.px(200),
                    height:Adapt.px(200),
                    fit: BoxFit.cover,
                ),
                new Container(
                    child: new Text('000101010'),
                ),
            ],
        );
    }
}

