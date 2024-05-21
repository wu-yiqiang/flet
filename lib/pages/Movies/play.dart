import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fplayer/fplayer.dart';
class PlayPage extends StatelessWidget {
  MoviesController moviesController = Get.put(MoviesController());
  final FPlayer player = FPlayer();
  void initState() {
    player.setDataSource(
        "http://192.168.110.101/videos/play/沉浸式体验｜2022款 沃尔沃XC90 B6智雅豪华版 7座.mp4",
        autoPlay: true);
  }
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
          // color: Colors.lightBlue,
          child: Column(
            children: [Play()],
          ),
        ),
      ),
    );
  }
  Widget Play() {
    return Container(
      child: FView(
        height: 280.h,
        player: player,
        // panelBuilder: fPanel2Builder(snapShot: true),
      ),
    );
  }
}
