import 'package:flutter/material.dart';
import 'package:flet/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:flet/common/widgets/home_page_tableview.dart';
import 'package:flet/pages/user/user_page.dart';
import 'package:flet/pages/weather/weather_page.dart';
import 'package:flet/pages/news/news_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flet/common/const.dart';
import 'package:flet/routes/routes.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<Homepage> {
  // 当前子项索引
  int currentIndex = 0;
  var rou = [];
  var bottomShow = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rou = Routess.where((item) => item["meta"]["TabbarShow"]).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: rou[currentIndex]["page"],
      // 底部导航栏
      bottomNavigationBar: bottomShow
          ? BottomNavigationBar(
              currentIndex: currentIndex,
              // 显示选中的文字
              showSelectedLabels: true,
              // 显示不选中时的文字
              showUnselectedLabels: false,
              // 选中颜色
              selectedItemColor: Color.fromRGBO(18, 150, 219, 1),
              // 未选中颜色
              unselectedItemColor: Colors.black,
              items: rou
                  .map((item) => BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          "assets/icons/common/" +
                              item["meta"]["icon"]! +
                              ".svg",
                          height: NavBarIconSize,
                        ),
                        label: item["title"],
                        activeIcon:  SvgPicture.asset(
                          "assets/icons/common/active_" +
                              item["meta"]["icon"]! +
                              ".svg",
                          height: NavBarIconSize * 1.1,
                        ),
                      ))
                  .toList(),
              onTap: onTabChanged,
            )
          : null,
    );
  }

  /// Tab 改变
  void onTabChanged(int value) {
    currentIndex = value;
    setState(() {
      currentIndex = value;
      bottomShow = rou[currentIndex]["meta"]["TabbarShow"];
    });
  }
}
