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
        children: [OptionsBar(), userInfo(), userBanner(), userOther()],
      ),
    );
  }
}

class OptionsBar extends StatelessWidget {
  UserController userController = Get.put(UserController());
  List<String> listArrray = [
    "assets/svg/scanDark.svg",
    "assets/svg/sun.svg",
    "assets/svg/globalDark.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      padding: EdgeInsets.all(2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: _listView(),
      ),
    );
  }

  List<Widget> _listView() {
    return listArrray
        .map(
          (v) => Container(
            child: Container(
              height: 40,
              width: 40,
              child: IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                icon: SvgPicture.asset(v),
                onPressed: () {},
              ),
            ),
          ),
        )
        .toList();
  }
}

class userInfo extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.all(10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: ClipOval(
                  child: Image.network(
                    'http://192.168.110.101:9527/assets/沉浸式体验｜2022款 沃尔沃XC90 B6智雅豪华版 7座.mp4.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.only(right: 10),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("看歌梭哈", style: TextStyle(fontSize: 16.sp)),
                    ),
                    Container(
                      child: Text("这个人很懒，什么也没有留下", style: TextStyle(fontSize: 14.sp)),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                child: IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: SvgPicture.asset("assets/svg/right.svg"),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class userBanner extends StatelessWidget {
  UserController userController = Get.put(UserController());
  List<String> iconList = ["assets/svg/record.svg","assets/svg/start.svg",];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 340.w,
      child: Wrap(
        spacing: 5, //主轴上子控件的间距
        runSpacing: 2, //交叉轴上子控件之间的间距
        alignment: WrapAlignment.start,
        children: _listView(), //要显示的子控件集合
      ),
    );
  }
  List<Widget> _listView() {
    return iconList
        .map(
          (v) => Container(
            height: 50,
            width: 50,
            child: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: SvgPicture.asset(v),
              onPressed: () {},
            ),
          ),
    )
        .toList();
  }

}

class userOther extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("更多服务", style: TextStyle(
          fontSize: 14.sp,
          color: Colors.black,
        ),),Item(), Item()],
      ),
    );
  }

  Widget Item() {
    return Container(
      padding: EdgeInsets.all(5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                child: IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: SvgPicture.asset("assets/svg/setting.svg"),
                  onPressed: () {},
                ),
                margin: EdgeInsets.only(right: 10),
              ),
              Container(
                child: Text("asdas")
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                child: IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: SvgPicture.asset("assets/svg/right.svg"),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
