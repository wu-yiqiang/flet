import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MoviesPage extends StatelessWidget {
  MoviesController moviesController = Get.put(MoviesController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("菜单栏目占"),
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
                pagination: const SwiperPagination(margin: EdgeInsets.all(8.0))
            ),
          ),
        ),
        Container()
      ],
    );
  }
}
