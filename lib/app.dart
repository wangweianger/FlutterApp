import 'package:flutter/material.dart';
import 'pages/home/home.dart';

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
			new UserPage(),
			new UserPage(),
		];
		_currentPage = _pageList[_currentIndex];
	}

	@override
	Widget build(BuildContext context) {
		final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
			items: <BottomNavigationBarItem>[
				new BottomNavigationBarItem(
					icon: Icon(Icons.home,size:35.0),title: new Text('首页'),
				),
				new BottomNavigationBarItem(
					icon: Icon(Icons.shopping_cart,size:35.0), title: new Text('购物车')
				),
				new BottomNavigationBarItem(
					icon: Icon(Icons.person,size:35.0), title: new Text('我的')
				),
			],
			type: BottomNavigationBarType.fixed,
			currentIndex: _currentIndex,
			iconSize: 24.0,
			onTap: (int index) {
				setState((){
					print(index);
					// _navigationViews[_currentIndex].controller.reverse();
					_currentIndex = index;
					// _navigationViews[_currentIndex].controller.forward();
					_currentPage = _pageList[_currentIndex];
					print(_pageList);
				});
			},
		);
		return new MaterialApp(
			theme: new ThemeData(
                primarySwatch: Colors.red,
            ),
			home:new Scaffold(
				body: new Center(
					child:_currentPage,
				),
				bottomNavigationBar: bottomNavigationBar,
			)
		);	
	}
}

class HomePage extends StatefulWidget {
	@override
	State<HomePage> createState() => new __HomePageState();
}
class __HomePageState extends State<HomePage>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			title:'home',
			home:new Scaffold(
				appBar: AppBar(
					title: Text('你我您社区团购'),
				),
				body: new Text('Home page!'),
			),
		);
	}
}


class UserPage extends StatefulWidget {
	@override
	State<UserPage> createState() => new __UserPageState();
}
class __UserPageState extends State<UserPage>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			title:'home',
			home:new Scaffold(
				appBar: AppBar(
					title: Text('你我您社区团购'),
				),
				body: new Text('User Center Pages!'),
			),
		);
	}
}

// class GroupBuy extends StatelessWidget {
// 	@override
// 	Widget build (BuildContext context) {
// 		return new MaterialApp(
// 			title:'首页',
// 			home: new Scaffold(
// 				appBar: AppBar(
// 					title: Text('你我您社区团购'),
// 				),
// 				body:new Index(),
// 				backgroundColor:Colors.white,
// 				bottomNavigationBar: new BottomNavigationBar(
// 					items: <BottomNavigationBarItem>[
// 						new BottomNavigationBarItem(
// 							icon: Icon(Icons.home,size:35.0,color: Color.fromARGB(255, 255, 0, 1),), 
// 							title: new Text('首页',style:TextStyle(color: Color.fromARGB(255, 255, 0, 1))),
// 							backgroundColor:Colors.red
// 						),
// 						new BottomNavigationBarItem(
// 							icon: Icon(Icons.shopping_cart,size:35.0), title: new Text('购物车')
// 						),
// 						new BottomNavigationBarItem(
// 							icon: Icon(Icons.person,size:35.0), title: new Text('我的')
// 						),
// 					],
// 					type: BottomNavigationBarType.fixed,
// 					currentIndex: 0,
// 					iconSize: 24.0,
// 					onTap: (index) {
						
// 					},
// 				)
// 			)
// 		);
// 	}
// }

