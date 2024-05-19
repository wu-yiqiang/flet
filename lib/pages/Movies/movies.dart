import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flet/pages/Movies/program.dart';
import 'package:flet/pages/Movies/videoLists.dart';

class MoviesPage extends StatelessWidget {
  MoviesController moviesController = Get.put(MoviesController());
  final List<VideoViewModel> programmeList = [
    VideoViewModel(
        name: "萨达萨达sdasdasdas萨达",
        img_url:
            "http://192.168.110.101:9527/assets/vivo X100 Pro拍照体验，凤姐来了都给你拍成刘亦菲.mp4.png"),
    VideoViewModel(
        name: "萨达萨达",
        img_url:
            "http://192.168.110.101:9527/assets/【大虾沉浸式试车】逍遥紫！24款星瑞霄汉版👉快来快来～带你沉浸式体验！.mp4.png"),
    VideoViewModel(
        name: "萨达萨达",
        img_url:
            "http://192.168.110.101:9527/assets/vivo X100 Pro拍照体验，凤姐来了都给你拍成刘亦菲.mp4.png"),
    VideoViewModel(
        name: "萨达萨达",
        img_url:
            "http://192.168.110.101:9527/assets/vivo X100 Pro拍照体验，凤姐来了都给你拍成刘亦菲.mp4.png"),
    VideoViewModel(
        name: "萨达萨达",
        img_url:
            "http://192.168.110.101:9527/assets/vivo X100 Pro拍照体验，凤姐来了都给你拍成刘亦菲.mp4.png"),
    VideoViewModel(
        name: "萨达萨达",
        img_url:
            "http://192.168.110.101:9527/assets/vivo X100 Pro拍照体验，凤姐来了都给你拍成刘亦菲.mp4.png"),
  ];

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
    List<Widget>listWidget=[];
    moviesController.ItemsMap.forEach((k,v){
      final List<VideoViewModel> lists= [];
      v.forEach((i,j) {
        print({"啥搜索",j});
        lists.add(
            VideoViewModel(name: j.name, img_url: j.img_url)
        );
      });
      listWidget.add(Programme(ProgrammeName: k, programLists: lists));
    });
    print({"sssssss萨达个大帅哥帅哥帅哥大帅哥大帅哥说", moviesController.ItemsMap});
    return listWidget;
  }
}
