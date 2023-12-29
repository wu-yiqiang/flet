import 'package:flutter/material.dart';
import 'package:flet/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:flet/common/widgets/home_page_tableview.dart';
import 'package:flet/pages/user/user_page.dart';
import 'package:flet/pages/weather/weather_page.dart';
import 'package:flet/pages/news/news_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flet/common/const.dart';

class HomePage extends StatelessWidget {
  final HomeConstroller homeConstroller = Get.find<HomeConstroller>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tabViewColor,
      appBar: AppBar(
        toolbarHeight: appbarHeight,
        title: SvgPicture.asset("assets/icons/common/micro.svg"),
        leading: SvgPicture.asset("assets/icons/common/menu.svg",
            color: Colors.white),
        backgroundColor: weatherAppbarColor,
        actions: [Switch()],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: homeConstroller.pageController,
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  // alignment: Alignment.center,
                  child: WeatherPage(),
                ),
                Container(
                  color: Colors.red,
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: NewsPage(),
                ),
                Container(
                  color: Colors.orange,
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: UserPage(),
                )
              ],
            )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: bottomTabViewHeight,
                  width: double.infinity,
                  color: Colors.blue,
                  child: HomePageTabView(
                    tabIcons: [
                      "assets/icons/common/weather.svg",
                      "assets/icons/common/news.svg",
                      "assets/icons/common/user.svg",
                    ],
                    selectIndex: 0,
                    activeColor: Colors.blue,
                    onPress: (index) {
                      homeConstroller.pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease);
                    },
                  ),
                ))
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
  final Color activeFontColor =  Color.fromRGBO(255, 255, 255, 1);
  final Color bgcColor =  Color.fromRGBO(36, 36, 36, 0.5);
  final Color fontColor =  Color.fromRGBO(255, 255, 255, 0.7);
  final borderRadious = 4.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(borderRadious), bottomLeft: Radius.circular(borderRadious)),
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
                  child: Text('℉', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,color: !isCel ? activeFontColor :  fontColor),textAlign: TextAlign.center,),
                ),
              )
          ),
          ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(borderRadious), bottomRight: Radius.circular(borderRadious)),
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
                  child: Text('℃', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,color: isCel ? activeFontColor :  fontColor),textAlign: TextAlign.center,),
                ),
              )
          ),
        ],
      ),
    );
  }
}
