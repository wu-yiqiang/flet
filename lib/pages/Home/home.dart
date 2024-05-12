import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Home/controller/home_controller.dart';
class CounterPage extends StatelessWidget {
  final controller = Get.find<CounterController>();
  final state = Get.find<CounterController>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("显示${state}"),
    );
  }
}
