import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/User/controller/user_controller.dart';
class UserPage extends StatelessWidget {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("setting page"),
    );
  }
}


