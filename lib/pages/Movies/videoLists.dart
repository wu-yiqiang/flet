import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Video extends StatelessWidget {
  final VideoViewModel data;

  const Video({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Get.toNamed("/video");
      },
      child: Column(
        children: <Widget>[
          Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                child: Image.network(
                  this.data.img_url,
                  fit: BoxFit.fitWidth,
                )
              ),
          ),
          Container(
            child: Text(
                this.data.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                )
            ),
          )
        ],
      ),
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