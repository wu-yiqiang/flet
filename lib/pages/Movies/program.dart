import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flet/pages/Movies/videoLists.dart';
class Programme extends StatelessWidget {
  final String ProgrammeName;

  final List<VideoViewModel> programLists;

  // final ProgrammeViewModel data;
  const Programme({Key? key, required this.ProgrammeName, required this.programLists}) : super(key: key);

  Widget renderHeader() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Text(
            this.ProgrammeName,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              // color: Color(0xFF333333),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                'more'.tr,
                style: TextStyle(
                  fontSize: 14.sp,
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

  Widget renderBody() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: this.programLists.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 5.w,
        // childAspectRatio: 9 / 16,
      ),
      itemBuilder: (context, index) {
        return Video(data: this.programLists[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        this.renderHeader(),
        this.renderBody(),
      ],
    );
  }
}

