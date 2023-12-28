import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flet/modules/illustration.dart';
import 'package:flet/pages/weather/ServiceItem.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/weather/CloudyNight.png"),
              fit: BoxFit.cover)),
      child: Column(children: <Widget>[
        Location(),
        Time(),
        WeatherInfo(),
        Expanded(
          child: AirInfos(),
        ),
      ]),
    );
  }
}

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        "上海市，静安区",
        style: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
      )
    ]);
  }
}

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        "20:08",
        style: TextStyle(fontSize: 20, color: Colors.white),
      )
    ]);
  }
}

class WeatherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        children: [
          Container(
              // margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // Image.asset(
                  //   'assets/weather/ClearNight.svg',
                  //   width: 50,
                  // ),
                  SvgPicture.asset("assets/weather/ClearNightV3.svg"),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "12",
                          style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "°C",
                          style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )

                  ),

                ],
              ))
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "晴朗",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            "体感温度 11°",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ]);
  }
}

class AirInfos extends StatelessWidget {
  final listData = [
    {"title": "空气质量", "value": "86"},
    {"title": "风速", "value": "北风 2级"},
    {"title": "湿度", "value": "99%"},
    {"title": "能见度", "value": "3.8 公里"},
    {"title": "气压", "value": "1028 hPa"},
    {"title": "露点", "value": "10°"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView(
      // padding: EdgeInsets.symmetric(vertical: 0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
          childAspectRatio: 1.5
      ),
      children: listData.map((item) => ServiceItem(item: item)).toList(),
    );
  }
}
