import 'package:flutter/material.dart';
import 'package:flet/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:flet/common/widgets/home_page_tableview.dart';
import 'package:flet/routes/routes.dart';
import 'package:flet/pages/user/user_page.dart';
import 'package:flet/pages/weather/weather_page.dart';
import 'package:flet/pages/news/news_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flet/common/const.dart';
class HomePage extends StatelessWidget {

  final HomeConstroller homeConstroller = Get.find<HomeConstroller>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      appBar: AppBar(
        toolbarHeight: appbarHeight,
        leading: SvgPicture.asset("assets/icons/common/menu.svg", color: Colors.white),
        backgroundColor: weatherAppbarColor,
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
