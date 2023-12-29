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
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          if (item["title"] == "空气质量")
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  margin:  EdgeInsets.only( right: 6),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                ),
                Text(
                  item["value"]!,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          else
            Text(
              item["value"]!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
        ],
      ),
    );
  }
}
