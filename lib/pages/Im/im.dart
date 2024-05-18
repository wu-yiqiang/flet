import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Im/controller/im_controller.dart';
class ImPage extends StatelessWidget {
  ImController imController = Get.put(ImController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("IM page"),
    );
  }
}


