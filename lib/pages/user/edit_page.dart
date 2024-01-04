import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("账号资料"),
          titleSpacing: 0,
        ),
      body: EditInfo(),
    );
  }
}

class EditInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [],
      ),
    );
  }
}