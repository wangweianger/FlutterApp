import 'package:flutter/material.dart';

class UserCenter extends StatefulWidget {
	@override
	State<UserCenter> createState() => new __UserCenterState();
}
class __UserCenterState extends State<UserCenter>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			home:new Scaffold(
				appBar: AppBar(
					title: Text('User Center'),
				),
				body: new Center(
                    child:new Text('User Center Pages!'),
                ),
			),
		);
	}
}
