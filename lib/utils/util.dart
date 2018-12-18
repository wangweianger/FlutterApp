import 'package:flutter/material.dart';

void showMessage(BuildContext context,String name,callback) {
    showDialog<Null>(
        context: context,
        child: new AlertDialog(
            content: new Text(name),
            actions: <Widget>[
                new FlatButton(
                    onPressed: () {
                        callback && callback();
                    },
                    child: new Text('确定')
                )
            ]
        )
    );
}