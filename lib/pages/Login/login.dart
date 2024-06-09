import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Login/controller/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: 360.w,
          height: 690.h,
          padding: EdgeInsets.all(20),
          color: Color.fromRGBO(52,122,240,1),
          child: Scaffold(
            backgroundColor: Color.fromRGBO(52,122,240,1),
            body: Container(
              padding: EdgeInsets.all(20),
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(6.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/logo.png",
                    width: 100.0,
                  ),
                  SizedBox(height: 50),
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: 'username'.tr,
                        hintText: 'username-tips'.tr,
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "password".tr,
                        hintText: "password-tips".tr,
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder()),
                    obscureText: true,
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        icon: SvgPicture.asset("assets/svg/register.svg",
                            width: 26, height: 26),
                        label: Text("register".tr),
                        onPressed: () {},
                      ),
                      ElevatedButton.icon(
                        icon: SvgPicture.asset("assets/svg/login.svg",
                            width: 26, height: 26),
                        label: Text("login".tr),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ))
        )
    );
  }
}
