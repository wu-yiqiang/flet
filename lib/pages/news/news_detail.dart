import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("资讯"),
        titleSpacing: 0,
      ),
      body: NewsBody(),
    );
  }
}

class NewsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text("sdsd"),
    );
  }
}
