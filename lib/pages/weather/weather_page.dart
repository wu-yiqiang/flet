import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/weather/CloudyNight.png"),
              fit: BoxFit.cover)),
      child: Column(children: [
        Location(),
        Time(),
        WeatherInfo(),
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
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
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
        style: TextStyle(fontSize: 18, color: Colors.white),
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
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [Text(
                  "12",
                  style: TextStyle(
                      fontSize: 60, color: Colors.white, fontWeight: FontWeight.w700),
                ),
                  Text(
                    "°C",
                    style: TextStyle(
                        fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
                  ),],
              )
          )

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
