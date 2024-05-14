import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
class Navbar extends StatelessWidget {
  final controller = Get.find<HomeController>();
  final state = Get.find<HomeController>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 这里设置 AppBar
        appBar: AppBar(
          title: Text('AppBar - ZeroFlutter'),

        ),
    );
  }
}
