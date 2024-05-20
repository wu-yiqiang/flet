import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flet/pages/Movies/program.dart';
import 'package:flet/pages/Movies/videoLists.dart';

class MoviesPage extends StatelessWidget {
  MoviesController moviesController = Get.put(MoviesController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text("顶部搜索栏"),
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
        Expanded(child:
        Container(
          padding: EdgeInsets.all(10.0),
          child: Expanded(
              child: Obx(() {
                return ListView(
                  children: _listView(),
                );
              }),
          ),
        ),
        )
      ],
    );
  }
  List<Widget> _listView(){
    List<Widget> listWidget=[];
    moviesController.ItemsMap.forEach((k,v){
      final List<VideoViewModel> lists= [];
      v.forEach((i) {
        lists.add(
            VideoViewModel(name: i["name"], img_url: i["img_url"])
        );
      });

      listWidget.add(Programme(ProgrammeName: k, programLists: lists));
    });
    return listWidget;
  }
}
