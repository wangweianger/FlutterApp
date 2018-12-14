import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeSwiper extends StatelessWidget {
    HomeSwiper({Key key, this.bannerList}) : super(key: key);

    final List bannerList;

    @override
    Widget build(BuildContext context){
        return new Swiper(
            itemBuilder: (BuildContext context,int index){
                String url = bannerList[index]['url'];
                return new Image.network(url,fit: BoxFit.fill,);
            },
            autoplay:true,
            duration:300,
            autoplayDelay:5000,
            itemCount: bannerList.length,
            loop:true,
            pagination: new SwiperPagination(),
            control: new SwiperControl(
                color:Colors.white,
            ),
        );
    }
}