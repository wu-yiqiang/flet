import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class HomePageTabView extends StatefulWidget {
  final List<String> tabIcons;
  final Color? activeColor;
  final Color? bgColor;
  final Function(int index)? onPress;
  int selectIndex;

  HomePageTabView(
      {Key? key,
      required this.tabIcons,
      this.activeColor = Colors.blue,
      this.bgColor = Colors.white,
      this.onPress,
      this.selectIndex = 0})
      : assert(tabIcons!.length <= 5),
        assert(selectIndex <= tabIcons!.length - 1),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageTabViewState();
  }
}

class HomePageTabViewState extends State<HomePageTabView> {
  List<Widget> _renderButtons() {
    return widget.tabIcons.asMap().keys.map<Widget>((index) {
      String asset = widget.tabIcons![index];
      return Container(
        width: Get.width / widget.tabIcons!.length,
        height: double.infinity,
        color: widget.bgColor,
        child: IconButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: SvgPicture.asset(asset,
              color: index == widget.selectIndex
                  ? widget.activeColor
                  : Colors.grey),
          onPressed: () {
            if (widget.selectIndex == index) return;
            if (widget.onPress != null) {
              widget.onPress!(index);
            }
            setState(() {
              widget.selectIndex = index;
            });
          },
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _renderButtons(),
      ),
    );
  }
}
