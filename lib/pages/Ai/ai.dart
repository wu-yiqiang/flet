import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Ai/controller/ai_controller.dart';
class AiPage extends StatelessWidget {
  final controller = Get.find<AiController>();
  final state = Get.find<AiController>().state;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("AI page"),
    );
  }
}


