import 'package:flutter/material.dart';
import 'package:flet/modules/illustration.dart';

class ServiceItem extends StatelessWidget {
  final Map<String, String> item;

  const ServiceItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item["title"]!,
            style: TextStyle(fontSize: 24, color: Colors.grey),
          ),
          if (item["title"] == "空气质量")
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  margin:  EdgeInsets.only( right: 10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                ),
                Text(
                  item["value"]!,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          else
            Text(
              item["value"]!,
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
