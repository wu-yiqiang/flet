import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Programme extends StatelessWidget {
  final ProgrammeViewModel data;
  const Programme({Key? key, required this.data}) : super(key: key);

  Widget renderHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            this.data.types,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                '更多',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xFF666666),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 20.sp,
                color: Color(0xFF999999),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget renderBody() {
  //   return GridView.builder(
  //     shrinkWrap: true,
  //     itemCount: this.lists.length,
  //     physics: NeverScrollableScrollPhysics(),
  //     padding: EdgeInsets.symmetric(horizontal: 16),
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 3,
  //       mainAxisSpacing: 10,
  //       crossAxisSpacing: 10,
  //       childAspectRatio: 0.7,
  //     ),
  //     itemBuilder: (context, index) {
  //       return Programme(data: lists[index]);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        this.renderHeader(),
        //this.renderBody(),
      ],
    );
  }
}

class ProgrammeViewModel {
  /// 节目分类
  final String types;
  final String video_url;
  final String img_url;
  final String name;
  final String path;
  const ProgrammeViewModel({
    required this.types,
    required this.video_url,
    required this.img_url,
    required this.name,
    required this.path,
  });
}
