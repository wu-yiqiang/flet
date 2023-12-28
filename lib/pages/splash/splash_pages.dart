import 'package:flet/pages/splash/splash_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flet/modules/illustration.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flet/common/config.dart';
import 'package:flet/routes/routes.dart';
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pageViewWidget(),
    );
  }
}

class _pageViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _pageViewWidgetState();
  }
}

class _pageViewWidgetState extends State<_pageViewWidget> {
  SplashController splashController = Get.find<SplashController>();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        PageView.builder(
          itemCount: 3,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            if (index > splashController.illustrations.length - 1)
              return const SizedBox.shrink();
            Illustration illustration = splashController.illustrations[index];
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    illustration.assets!,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ]);
          },
        ),
        if (_currentIndex == 2)
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom + 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => commonBlueColor),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    )),
                    foregroundColor: MaterialStateProperty.all(textBlackColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)))),
                child: Text('进入flet世界',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      height: 1.5,
                    )),
              ),
            ]),
          ),
        Positioned(
          left: 0,
          right: 0,
          bottom: MediaQuery.of(context).padding.bottom + 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 12,
                height: 12,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == 0 ? Colors.blue : Colors.grey),
              ),
              Container(
                width: 12,
                height: 12,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == 1 ? Colors.blue : Colors.grey),
              ),
              Container(
                width: 12,
                height: 12,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == 2 ? Colors.blue : Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
