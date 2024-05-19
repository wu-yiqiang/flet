import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flet/pages/Movies/program.dart';

class MoviesPage extends StatelessWidget {
  MoviesController moviesController = Get.put(MoviesController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("顶部搜索栏"),
        Container(
          padding: EdgeInsets.all(10.0),
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Swiper(
              itemBuilder: (context, index) {
                return Image.network(
                  moviesController.bannerLists[index],
                  fit: BoxFit.fitWidth,
                );
              },
              itemCount: moviesController.bannerLists.length,
              pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    activeColor: Color.fromRGBO(18, 150, 219, 1),
                  )),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Programme(data: moviesController.ItemsMap["综艺"] ?? {
              //   "name": "sadas",
              //   "path": "sds",
              //   "types": "sadas",
              //   "video_url": "asdsad",
              //   "img_url": "sada",
              // },),
            ],
          ),
        )
      ],
    );
  }
}
