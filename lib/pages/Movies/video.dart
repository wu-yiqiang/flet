import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoPage extends StatelessWidget {
  MoviesController moviesController = Get.put(MoviesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("详情"),
        backgroundColor: Color.fromRGBO(18, 150, 219, 1),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 340.w,
          child: Column(
            children: [Pic(), Reduce(), Tag(), Opts()],
          ),
        ),
      ),
    );
  }

  Widget Pic() {
    return Container(
      width: 200.w,
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(Radius.circular(6.0)),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            "http://192.168.110.101:9527/assets/沉浸式体验｜2022款 沃尔沃XC90 B6智雅豪华版 7座.mp4.png",
            fit: BoxFit.fitWidth,
          )),
    );
  }

  Widget Reduce() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 240.w,
      child: Text("沉浸式体验｜2022款 沃尔沃XC90 B6智雅豪华版 7座.mp4"),
    );
  }

  Widget Tag() {
    return Container(
      width: 160.w,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: new BoxDecoration(
              color: Colors.cyan,
              borderRadius: new BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Text("剧情"),
          ),
          Container(
            padding: EdgeInsets.all(6),
            decoration: new BoxDecoration(
              color: Colors.cyan,
              borderRadius: new BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Text("2024"),
          ),
          Container(
            padding: EdgeInsets.all(6),
            decoration: new BoxDecoration(
              color: Colors.cyan,
              borderRadius: new BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Text("芬兰"),
          ),
        ],
      ),
    );
  }

  Widget Opts() {
    return Container(
      width: 200.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        // 交叉轴的布局方式，对于column来说就是水平方向的布局方式
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            decoration: new BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: new BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Text("收藏"),
          ),
          InkWell(
            onTap: () {
              Get.toNamed("/play");
            },
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: new BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Text("播放"),
            ),
          )
        ],
      ),
    );
  }
}
