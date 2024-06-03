import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Login/controller/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Container(
          child:  Center(
            child: Column(
              children: [
                Container(
                  child: Text(
                    "登录",
                    style:
                    TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
                  ),
                ),
                Text("sadas"),
                Text("sadas")
              ],
            ),
          ),
          width: 300.w,
          color: Colors.green,
        ),
        color: Colors.white,
      ),
    );
  }
}
