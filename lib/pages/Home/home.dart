import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
import 'package:flet/pages/components/Navbar/Navbar.dart';
class HomePage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  final state = Get.find<HomeController>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //导航栏
        title: Text("App Name"),
        actions: <Widget>[ //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      // drawer: MyDrawer(), //抽屉
      // bottomNavigationBar: BottomNavigationBar( // 底部导航
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      //     BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
      //     BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
      //   ],
      //   // currentIndex: _selectedIndex,
      //   fixedColor: Colors.blue,
      //   // onTap: _onItemTapped,
      // ),
    );
  }
}
