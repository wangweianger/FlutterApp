import 'package:flutter/material.dart';
import '../../utils/adapt.dart';
import 'swiper.dart';
import 'goods_item.dart';

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
					title: Text('首页'),
				),
				body:new ItemList(),
		    ),
        );
	}
}

// 商品列表
class ItemList extends StatefulWidget {
    @override
	State<ItemList> createState() => new __ItemListState();
}
class __ItemListState extends State<ItemList>{
    @override
	Widget build(BuildContext context) {
        List<Widget> list = [
            // banner
            new Container(
                height:Adapt.px(300),
                child:new HomeSwiper(bannerList:bannerList),
            ),
        ];
        int len = itemListDatas.length;
        for (var i = 0; i < len; i++) {
            itemListDatas[i]['isLastOne'] = i == len-1 ? true : false;
            list.add(new Item(item:itemListDatas[i]));
        }
        return ListView(
            shrinkWrap: true, 
            children: list,
        ); 
    }
}