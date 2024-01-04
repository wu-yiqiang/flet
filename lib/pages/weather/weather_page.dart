import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flet/modules/illustration.dart';
import 'package:flet/pages/weather/ServiceItem.dart';
import 'package:flet/common/const.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tabViewColor,
        appBar: AppBar(
          toolbarHeight: appbarHeight,
          title: SvgPicture.asset("assets/icons/common/micro.svg"),
          // leading: SvgPicture.asset("assets/icons/common/menu.svg",
          //     color: Colors.white),
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                  //Scaffold.of(context).closeDrawer(); //关闭侧边栏
                  // Scaffold.of(context).openEndDrawer();//打开右侧侧边栏
                },
                icon: SvgPicture.asset("assets/icons/common/menu.svg",
                    color: Colors.white),
                iconSize: 50,
              );
            },
          ),
          backgroundColor: weatherAppbarColor,
          titleSpacing: 0,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Switch(),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
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
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  // color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
    );
  }
}

class Switch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwitchWidgetState();
  }
}

class SwitchWidgetState extends State<Switch> {
  bool isCel = true;
  final Color activeBgcColor = Color.fromRGBO(255, 255, 255, 0.2);
  final Color activeFontColor = Color.fromRGBO(255, 255, 255, 1);
  final Color bgcColor = Color.fromRGBO(36, 36, 36, 0.5);
  final Color fontColor = Color.fromRGBO(255, 255, 255, 0.7);
  final borderRadious = 4.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadious),
                  bottomLeft: Radius.circular(borderRadious)),
              child: Container(
                width: 36,
                padding: EdgeInsets.all(3),
                color: !isCel ? activeBgcColor : bgcColor,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isCel = false;
                    });
                  },
                  radius: 0.0,
                  highlightColor: Colors.transparent,
                  child: Text(
                    '℉',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: !isCel ? activeFontColor : fontColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(borderRadious),
                  bottomRight: Radius.circular(borderRadious)),
              child: Container(
                width: 36,
                padding: EdgeInsets.all(3),
                color: isCel ? activeBgcColor : bgcColor,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isCel = true;
                    });
                  },
                  radius: 0.0,
                  highlightColor: Colors.transparent,
                  child: Text(
                    '℃',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: isCel ? activeFontColor : fontColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
        ],
      ),
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
        style: TextStyle(fontSize: 16, color: Colors.white),
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
              Image.asset(
                'assets/weather/ClearNight.png',
                width: 70,
              ),
              // SvgPicture.asset("assets/weather/ClearNightV3.svg"),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "°C",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
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
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            "体感温度 11°",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
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
    {"title": "露点", "value": "10 °"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView(
      // padding: EdgeInsets.symmetric(vertical: 0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1.5),
      children: listData.map((item) => ServiceItem(item: item)).toList(),
    );
  }
}
