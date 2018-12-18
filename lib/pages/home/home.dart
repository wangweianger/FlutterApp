import 'package:flutter/material.dart';
import '../../utils/adapt.dart';
import 'top_address.dart';
import 'swiper.dart';
import 'goods_item.dart';
import 'top_nav.dart';

import 'data.dart';

class HomePage extends StatefulWidget {
	@override
	State<HomePage> createState() => new __HomePageState();
}
class __HomePageState extends State<HomePage>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
            theme: new ThemeData(
                primarySwatch: Colors.red,
            ),
			home:new Scaffold(
				appBar: AppBar(
					title: Text('你我您社区团购'),
				),
				body:new Column (
                    children: <Widget>[
                        new Address(),
                        new TopNav(),
                        new Expanded(
                            child: new ItemList(),
                        ) 
                    ],
                )
		    ),
        );
	}
}

// --------------- 商品列表 ----------------
class ItemList extends StatefulWidget {
    @override
	State<ItemList> createState() => new __ItemListState();
}
class __ItemListState extends State<ItemList>{
    @override
	Widget build(BuildContext context) {
        int len = itemListDatas.length;
        for (var i = 0; i < len; i++) {
            itemListDatas[i]['isLastOne'] = i == len-1 ? true : false;
        }
        
        return new ListView.builder(
            itemCount:len,
            itemBuilder:(context, i){
                if(i == 0){
                    // banner
                    return new Container(
                        height:Adapt.px(300),
                        child:new HomeSwiper(bannerList:bannerList),
                    );
                } else {
                    // item list
                    return new Item(item:itemListDatas[i]);
                }
            }
        ); 
    }
}