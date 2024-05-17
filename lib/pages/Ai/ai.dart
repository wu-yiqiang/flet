import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Im/controller/im_controller.dart';
class ImPage extends StatelessWidget {
  final controller = Get.find<ImController>();
  final state = Get.find<ImController>().state;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("IM page"),
    );
  }
}


