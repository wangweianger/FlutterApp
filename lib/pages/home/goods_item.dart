import 'package:flutter/material.dart';

// item
class Item extends StatelessWidget {
    Item({Key key,this.item}) : super(key: key);

    final Map item;

    @override
    Widget build(BuildContext context) {
        return new Text(item['title']);
    }
}

