import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
// import 'package:quit/common/config.dart';

class NewsSwipper extends StatelessWidget {
  List<Map> Banners = [
    {"url": "assets/illustration/banner1.jpeg"},
    {"url": "assets/illustration/banner2.jpeg"},
    {"url": "assets/illustration/banner3.jpeg"},
    {"url": "assets/illustration/banner4.jpeg"},
    {"url": "assets/illustration/banner5.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    var MySwiperWidget = ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          //每次循环遍历时，将i赋值给index
          return new Image.asset(
            Banners[index]['url'],
            fit: BoxFit.cover,
          );
        },
        itemCount: Banners.length,
        //指示器
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(color: Colors.grey)),
      ),
    );
    return Container(
        width: double.infinity,
        height: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: MySwiperWidget);
  }
}
