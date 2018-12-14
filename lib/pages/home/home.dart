import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
                    child:new Swiper(
                        itemBuilder: (BuildContext context,int index){
                            return new Image.network("https://img.allpyra.com/3e762819-83fa-40b8-96cb-0fd1674ff26c.png",fit: BoxFit.fill,);
                        },
                        autoplay:true,
                        duration:300,
                        autoplayDelay:5000,
                        itemCount: 2,
                        loop:true,
                        pagination: new SwiperPagination(),
                        // control: new SwiperControl(
                        //     color:Colors.black87,
                        // ),
                    ),
                ),
			),
		);
	}
}

