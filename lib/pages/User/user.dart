import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/User/controller/user_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class UserPage extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OptionsBar(),
          userBanner(),
          userInfo(),
          userOther()
        ],
      ),
    );
  }
}

class OptionsBar extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      color: Colors.blueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: 40,
            child: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: SvgPicture.asset("assets/svg/scanDark.svg"),
              onPressed: () {
              },
            ),
          ),
          Container(
            height: 40,
            width: 40,
            child: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: SvgPicture.asset("assets/svg/moon.svg"),
              onPressed: () {
              },
            ),
          ),
          Container(
            height: 40,
            width: 40,
            child: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: SvgPicture.asset("assets/svg/globalDark.svg"),
              onPressed: () {
              },
            ),
          ),
        ],
      ),
    );
  }
}

class userInfo extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text("userInfo"),
    );
  }
}

class userBanner extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text("萨达"),
    );
  }
}

class userOther extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text("userOther"),
    );
  }
}



