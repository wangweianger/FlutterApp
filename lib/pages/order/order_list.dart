import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
	@override
	State<OrderList> createState() => new __OrderListState();
}
class __OrderListState extends State<OrderList>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			home:new Scaffold(
				appBar: AppBar(
					title: Text('order list.'),
				),
				body:new Center(
                    child:new Text('Order list page!'),
                ), 
			),
		);
	}
}
