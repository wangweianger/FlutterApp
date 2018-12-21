import 'package:flutter/material.dart';
import '../../utils/adapt.dart';
import '../../utils/util.dart';
import 'cart_item.dart';

import 'data.dart';

class SgoppingCart extends StatefulWidget {
	@override
	State<SgoppingCart> createState() => new __SgoppingCartState();
}
class __SgoppingCartState extends State<SgoppingCart>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
            theme: new ThemeData(
                primarySwatch: Colors.red,
            ),
			home:new Scaffold(
				appBar: AppBar(
					title: Text('购物车'),
				),
				body:new Column(
                    children: <Widget>[
                        Expanded(child: new ItemList()),
                        new Container(margin:EdgeInsets.only(left:Adapt.px(30)),child: new SubmitBottom()),
                    ],
                ),
			),
		);
	}
}

class SubmitBottom extends StatefulWidget {
    @override
	State<SubmitBottom> createState() => new __SubmitBottomState();
}
class __SubmitBottomState extends State<SubmitBottom>{
    double totalPrice = 0;
    @override
    Widget build(BuildContext context) {
        return new Row(
            children: <Widget>[
                Expanded(
                    child: new Row(
                        children: <Widget>[
                            new GestureDetector(
                                onTap: (){},
                                child: new Image.network(
                                    'https://img.allpyra.com/17763f04-254b-46ae-9cec-a5e48ab14394.png?imageslim',
                                    width:Adapt.px(46),
                                    height:Adapt.px(46),
                                ),
                            ),
                            new Text(
                                '全选',
                                style: TextStyle(
                                    fontSize: Adapt.px(40),
                                    color:Colors.black
                                ),
                            ),
                        ],
                    ),
                ),
                Expanded(
                    child: new Text(
                        '合计¥$totalPrice',
                        style:TextStyle(
                            color:Colors.red,
                            fontSize: Adapt.px(30)
                        )
                    ),
                ),
                new Container(
                    width:Adapt.px(235),
                    height:Adapt.px(90),
                    color:Colors.red,
                    child: new FlatButton(
                        // color: Color.fromARGB(0,139, 98, 254),
                        highlightColor: Colors.blue[700],
                        colorBrightness: Brightness.dark,
                        splashColor: Colors.grey,
                        child: Text("去结算",style:TextStyle(color:Colors.white,fontSize: Adapt.px(30))),
                        onPressed: (){},
                    )
                ),
            ],
        );
    }
}

class ItemList extends StatefulWidget {
    @override
	State<ItemList> createState() => new __ItemListState();
}
class __ItemListState extends State<ItemList>{
    List<Map> dataList = [];

    void _getDatas(){
        setState(() {
            // 300ms 之后获得数据
            new Future.delayed(const Duration(milliseconds: 300)).then((val) {
                setState(() {
                    dataList = shoppingList;
                });
            });    
        });
    }

    @override
    void initState() {
        super.initState();
        _getDatas();
    }

    @override
    Widget build(BuildContext context) {
        int len = dataList.length;
        if(len == 0){
            return new Loading();
        }
        for (var i = 0; i < len; i++) {
            dataList[i]['isSelected'] = true;
        }
        return new ListView.builder(
            itemCount:len,
            itemBuilder:(context, i){
                return new Item(item:dataList[i]);
            }
        );
    }
}
