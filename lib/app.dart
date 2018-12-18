import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'pages/cart/shopping_cart.dart';
import 'pages/order/order_list.dart';
import 'pages/user/user_center.dart';

class MyAppBar extends StatefulWidget {
	@override
	State<MyAppBar> createState() => new _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
	int _currentIndex = 0;
	List<StatefulWidget> _pageList;
	StatefulWidget _currentPage;

	@override
	void initState(){
		super.initState();
		_pageList = <StatefulWidget>[
			new HomePage(),
			new SgoppingCart(),
			new OrderList(),
            new UserCenter(),
		];
		_currentPage = _pageList[_currentIndex];
	}

	@override
	Widget build(BuildContext context) {
		final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
			items: <BottomNavigationBarItem>[
				new BottomNavigationBarItem(
					icon: Icon(Icons.home),title: new Text('首页'),
				),
				new BottomNavigationBarItem(
					icon: Icon(Icons.shopping_cart), title: new Text('购物车')
				),
				new BottomNavigationBarItem(
					icon: Icon(Icons.assignment_ind,size:26.0), title: new Text('订单')
				),
                new BottomNavigationBarItem(
					icon: Icon(Icons.person), title: new Text('我的')
				),
			],
			type: BottomNavigationBarType.fixed,
			currentIndex: _currentIndex,
			iconSize: 30.0,
            fixedColor:Colors.red,
			onTap: (int index) {
				setState((){
					_currentIndex = index;
					_currentPage = _pageList[_currentIndex];
				});
			},
		);
		return new MaterialApp(
			theme: new ThemeData(
                primarySwatch: Colors.red,
            ),
			home:new Scaffold(
				body: new Container(
					child:_currentPage,
				),
				bottomNavigationBar: bottomNavigationBar,
			)
		);	
	}
}
