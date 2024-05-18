import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
import 'package:flet/pages/Movies/movies.dart';
import 'package:flet/pages/Setting/setting.dart';
import 'package:flet/pages/Im/im.dart';
import 'package:flet/pages/Ai/ai.dart';

class HomePage extends StatelessWidget {
  HomeController homeController = Get.put(HomeController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          onPageChanged: (index) => {
            homeController.setCurrent(index)
          },
          children: [
            MoviesPage(),
            ImPage(),
            AiPage(),
            SettingPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homeController.currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        selectedFontSize: 18,
        unselectedFontSize: 16,
        onTap: (index) => {
          homeController.setCurrent(index)
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/movies.png",
                  width: 30, height: 30),
              activeIcon: Image.asset("assets/images/movies.png",
                  width: 30, height: 30),
              label: "观影"),
          BottomNavigationBarItem(
              icon:
                  Image.asset("assets/images/chat.png", width: 30, height: 30),
              activeIcon:
                  Image.asset("assets/images/chat.png", width: 30, height: 30),
              label: "聊天"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/ai.png", width: 30, height: 30),
              activeIcon:
                  Image.asset("assets/images/ai.png", width: 30, height: 30),
              label: "AI"),
          BottomNavigationBarItem(
              icon:
                  Image.asset("assets/images/user.png", width: 30, height: 30),
              activeIcon:
                  Image.asset("assets/images/user.png", width: 30, height: 30),
              label: "用户")
        ],
      ),
    );
  }

  BottomNavigationBarItem _bottomItem(String title, IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(icon), activeIcon: Icon(icon), label: title);
  }
}
