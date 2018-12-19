import 'package:flutter/material.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";
import '../../utils/adapt.dart';
import '../../utils/util.dart';
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
    List<Map> dataList = [];
    List<Map> swiperList = [];

    RefreshController _refreshController;

    void _onRefresh(bool up){
        if(up){
            new Future.delayed(const Duration(milliseconds: 2000)).then((val) {
                print('up');
                _refreshController.scrollTo(_refreshController.scrollController.offset+50.0);
                _refreshController.sendBack(true, RefreshStatus.idle);
                setState(() {});
            });
        }
        else{
            new Future.delayed(const Duration(milliseconds: 2000)).then((val) {
                print('down');
                setState(() {});
                _refreshController.scrollTo(_refreshController.scrollController.offset-50.0);
                _refreshController.sendBack(false, RefreshStatus.idle);
            });
        }
    }

    // 获得渲染数据列表
    void _getDatas(){
        // 300ms 之后获得数据
        new Future.delayed(const Duration(milliseconds: 300)).then((val) {
            setState(() {
                dataList = itemListDatas;
                swiperList = bannerList; 
            });
        });
    }

    @override
    void initState() {
        super.initState();
        _getDatas();
        _refreshController = new RefreshController();
    }

    @override
	Widget build(BuildContext context) {
        int len = dataList.length;
        if(len == 0){
            return new Loading();
        }
        
        for (var i = 0; i < len; i++) {
            dataList[i]['isLastOne'] = i == len-1 ? true : false;
        }
        
        return new SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            onRefresh: _onRefresh,
            controller: _refreshController,
            child:new ListView.builder(
                itemCount:len,
                itemBuilder:(context, i){
                    if(i == 0){
                        // banner
                        return new Container(
                            height:Adapt.px(300),
                            child:new HomeSwiper(bannerList:swiperList),
                        );
                    } else {
                        // item list
                        return new Item(item:dataList[i]);
                    }
                }
            )
        );
    }
}

