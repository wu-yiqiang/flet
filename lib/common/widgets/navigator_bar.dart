import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:quit/common/config.dart';
import 'package:flutter_svg/svg.dart';

enum NavigatorBarCloseType { close, back }

class NavigatorBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigatorBar(
      {Key? key,
      this.closeCallback,
      this.bgColor = Colors.white,
      this.baseColor = Colors.blue,
      this.title,
      this.height = 55.0,
      this.navigatorBarCloseType = NavigatorBarCloseType.back})
      : super(key: key);

  final NavigatorBarCloseType? navigatorBarCloseType;
  final double? height;
  final Color? bgColor;
  final Color? baseColor;
  final String? title;
  final Function? closeCallback;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: bgColor!,
      padding: EdgeInsets.only(top: Get.context!.mediaQueryPadding.top),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    title ?? '',
                    style: TextStyle(
                        fontSize: 20,
                        color: baseColor,
                        fontWeight: FontWeight.w600),
                  ))),
          Positioned(
              top: 0,
              bottom: 0,
              left: 10,
              child: Container(
                // color: Colors.cyan,
                width: height,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    closeCallback?.call();
                  },
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  child: navigatorBarCloseType == NavigatorBarCloseType.close
                      ? SvgPicture.asset(
                          'assets/icons/common/close.svg',
                          width: 20,
                          height: 20,
                          color: baseColor,
                        )
                      : SvgPicture.asset(
                          'assets/icons/common/back.svg',
                          width: 30,
                          height: 30,
                          color: baseColor,
                        ),
                ),
              ))
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height!);
}
