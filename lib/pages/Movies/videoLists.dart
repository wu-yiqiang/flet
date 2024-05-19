import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  final VideoViewModel data;

  const Video({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Image.network(
                  this.data.img_url,
                  fit: BoxFit.cover,
                ),
              ].where((item) => item != null).toList(),
            ),
          ),
        ),
        // Padding(padding: EdgeInsets.only(top: 5)),
        SizedBox(
          height: 40,
          child: Text(
            this.data.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333),
            ),
          ),
        ),
      ],
    );
  }
}

class Helper {
  static String numFormat(int num) {
    if (num / 10000 < 1) {
      return 'num';
    } else if (num / 100000000 < 1) {
      return '${num ~/ 10000}万';
    } else {
      return '${num ~/ 100000000}亿';
    }
  }
}

class VideoViewModel {
  /// 节目名称
  final String name;
  /// 封面图地址
  final String img_url;

  const VideoViewModel({
    required this.name,
    required this.img_url,
  });
}