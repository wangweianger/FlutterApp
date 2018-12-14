import 'package:flutter/material.dart';

class SgoppingCart extends StatefulWidget {
	@override
	State<SgoppingCart> createState() => new __SgoppingCartState();
}
class __SgoppingCartState extends State<SgoppingCart>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			home:new Scaffold(
				appBar: AppBar(
					title: Text('My first app.'),
				),
				body: new Text('User Center Pages!'),
			),
		);
	}
}
