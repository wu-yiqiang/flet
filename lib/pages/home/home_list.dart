import 'package:flutter/material.dart';

// import 'package:quit/pages/home/home_controller.dart';
// import 'package:get/get.dart';
// import '../../common/config.dart';
// import 'package:quit/common/widgets/home_page_tableview.dart';
// import '../../routes/app_routes.dart';

class HomeList extends StatelessWidget {
  final lists = <Color>[
    Colors.purple[50]!,
    Colors.purple[100]!,
    Colors.purple[200]!,
    Colors.purple[300]!,
    Colors.purple[400]!,
    Colors.purple[500]!,
    Colors.purple[600]!,
    Colors.purple[700]!,
    Colors.purple[800]!,
    Colors.purple[900]!,
  ];

  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: lists
            .map((color) => Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Text(
                    colorString(color),
                    style: TextStyle(color: Colors.white, shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(.5, .5),
                          blurRadius: 2)
                    ]),
                  ),
                ))
            .toList(),
      ),
    );
  }

  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";
}
