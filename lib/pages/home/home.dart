import 'package:flutter/material.dart';
import 'swiper.dart';

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
					title: Text('Home Page'),
				),
				body:new Container(
                    height:180.0,
                    child:new HomeSwiper(bannerList:bannerList),
                ),
			),
		);
	}
}
