import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
import 'package:flet/pages/Movies/movies.dart';
import 'package:flet/pages/User/user.dart';
import 'package:flet/pages/Im/im.dart';
import 'package:flet/pages/Ai/ai.dart';

class HomePage extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  List NavigationList = [
    MoviesPage(),
    ImPage(),
    AiPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: SafeArea(
          child: NavigationList[homeController.currentIndex.value],
          ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: homeController.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          // 显示选中的文字
          showSelectedLabels: true,
          // 显示不选中时的文字
          showUnselectedLabels: false,
          // 选中颜色
          selectedItemColor: Color.fromRGBO(18, 150, 219, 1),
          // 未选中颜色
          unselectedItemColor: Colors.black,
          selectedFontSize: 18,
          unselectedFontSize: 16,
          onTap: (index) => {
            homeController.setCurrent(index),
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/movies.png",
                    width: 30, height: 30),
                activeIcon: Image.asset("assets/images/moviesAct.png",
                    width: 30, height: 30),
                label: "观影"),
            BottomNavigationBarItem(
                icon:
                Image.asset("assets/images/chat.png", width: 30, height: 30),
                activeIcon:
                Image.asset("assets/images/chatAct.png", width: 30, height: 30),
                label: "聊天"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/ai.png", width: 30, height: 30),
                activeIcon:
                Image.asset("assets/images/aiAct.png", width: 30, height: 30),
                label: "AI"),
            BottomNavigationBarItem(
                icon:
                Image.asset("assets/images/user.png", width: 30, height: 30),
                activeIcon:
                Image.asset("assets/images/userAct.png", width: 30, height: 30),
                label: "用户")
          ],
        ),
      );
    });
  }

  BottomNavigationBarItem _bottomItem(String title, IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(icon), activeIcon: Icon(icon), label: title);
  }
}
