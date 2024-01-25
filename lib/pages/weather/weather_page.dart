import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flet/modules/illustration.dart';
import 'package:flet/pages/weather/ServiceItem.dart';
import 'package:flet/common/const.dart';
import 'package:flet/api/weather.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
class WeatherPage extends StatefulWidget {
  WeatherPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WeatherState();
  }
}

class WeatherState extends State<WeatherPage> {
  String location = "";
  Map<String, dynamic> infoMap = {
    "info": "晴朗",
    "temperature": "12",
    "direct": "北风",
    "power": "2级",
    "humidity": "99%",
    "aqi": "是谁",
  };
  @override
  void initState() {
    super.initState();
    getInfo("上海");
  }

  void getInfo(String addr) async {
    var data = await WeatherApi.getWeatherInfo({"location": addr});
    setState(() {
      location = data["city"];
      infoMap = data["realtime"];
    });
  }

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
                iconSize: 50.sp,
              );
            },
          ),
          backgroundColor: weatherAppbarColor,
          titleSpacing: 0,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Switch(getInfo: getInfo),
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
            Location(location: location),
            Time(),
            WeatherInfo(infoMap: infoMap),
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
  const Switch({Key? key, this.getInfo}) : super(key: key);
  final getInfo;
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
                width: 36.w,
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
                        fontSize: 18.sp,
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
                width: 36.w,
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
                        fontSize: 18.sp,
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

class Location extends StatefulWidget {
  Location({Key? key, this.location = "上海"}) : super(key: key);
  final String location;

  @override
  State<StatefulWidget> createState() {
    return LocationState();
  }
}

class LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
      widget.location,
        style: TextStyle(
            fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.w700),
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
        style: TextStyle(fontSize: 16.sp, color: Colors.white),
      )
    ]);
  }
}

class WeatherInfo extends StatefulWidget {
  WeatherInfo({Key? key, this.infoMap = const {}}) : super(key: key);
  Map<String, dynamic> infoMap = {};

  @override
  State<StatefulWidget> createState() {
    return WeatherInfoState();
  }
}

class WeatherInfoState extends State<WeatherInfo> {
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
                width: 70.w,
              ),
              // SvgPicture.asset("assets/weather/ClearNightV3.svg"),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        widget.infoMap["temperature"]!,
                        style: TextStyle(
                            fontSize: 40.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "°C",
                        style: TextStyle(
                            fontSize: 40.sp,
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
            widget.infoMap['info']!,
            style: TextStyle(
                fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            "体感温度 11°",
            style: TextStyle(
                fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ]);
  }
}

class AirInfos extends StatefulWidget {
  AirInfos({Key? key, this.infoMap = const {}}) : super(key: key);
  Map<String, dynamic> infoMap = {};

  @override
  State<StatefulWidget> createState() {
    return AirInfosState();
  }
}

class AirInfosState extends State<AirInfos> {
  final listData = [
    {"title": "空气质量", "value": "86"},
    {"title": "风速", "value": "北风 2级"},
    {"title": "湿度", "value": "99%"},
    {"title": "能见度", "value": "3.8 公里"},
    {"title": "气压", "value": "1028 hPa"},
    {"title": "露点", "value": "10 °"},
  ];

  @override
  void initState() {
    super.initState();
  }
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
