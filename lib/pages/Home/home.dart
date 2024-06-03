import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
import 'package:flet/translation/translation_controller.dart';
import 'package:flet/pages/Movies/movies.dart';
import 'package:flet/pages/User/user.dart';
import 'package:flet/pages/Im/im.dart';
import 'package:flet/pages/Ai/ai.dart';

class HomePage extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  MessagesController messagesController = Get.put(MessagesController());
  List BottomArray = [{
    "icon": "assets/images/movies.png",
    "activeIcon": "assets/images/moviesAct.png",
    "label": "观影",
  }, {
    "icon": "assets/images/chat.png",
    "activeIcon": "assets/images/chatAct.png",
    "label": "聊天",
  }, {
    "icon": "assets/images/ai.png",
    "activeIcon": "assets/images/aiAct.png",
    "label": "AI",
  }, {
    "icon": "assets/images/user.png",
    "activeIcon": "assets/images/userAct.png",
    "label": "用户",
  }];
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
          items: this._listBottomNavigationBarItem(),
        ),
      );
    });
  }

  List<BottomNavigationBarItem> _listBottomNavigationBarItem() {
    return BottomArray.map((k) => BottomNavigationBarItem(
        icon: Image.asset(k["icon"], width: 30, height: 30),
        activeIcon:
        Image.asset(k["activeIcon"], width: 30, height: 30),
        label: k["label"])).toList();
  }
}
