import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Setting/controller/setting_controller.dart';
class SettingPage extends StatelessWidget {
  SettingController settingController = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("setting page"),
    );
  }
}


