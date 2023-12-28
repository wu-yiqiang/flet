import 'package:flutter/material.dart';
import 'package:flet/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:flet/common/widgets/home_page_tableview.dart';
import 'package:flet/routes/routes.dart';
import 'package:flet/pages/user/user_page.dart';
import 'package:flet/pages/weather/weather_page.dart';
import 'package:flet/pages/news/news_page.dart';

class HomePage extends StatelessWidget {
  final double bottomTabViewHeight = 70.0;
  final HomeConstroller homeConstroller = Get.find<HomeConstroller>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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
                  padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            // width: double.infinity,
                            margin: EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            // child: HomeSwipper(),
                          )
                        ],
                      ),
                      Container(
                        height: 400,
                        // child: HomeList(),
                        child: WeatherPage(),
                      )
                    ],
                  ),
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
