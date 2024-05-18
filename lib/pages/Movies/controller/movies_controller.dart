import 'package:get/get.dart';
import "package:flet/api/movies.dart";
class MoviesController extends GetxController {
  List bannerLists = [].obs;
  Map ItemsMap = {}.obs;
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getBanners();
    getItems();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  void getBanners() async {
    var data = await MoviesApi.getBanners();
    bannerLists = data["data"];
  }
  void getItems() async {
    var data = await MoviesApi.getVideoList();
    List lists = data['data']['list'];
    lists.forEach((element) {
      final str = element["types"];
      if (ItemsMap.containsKey(str)) {
        print({"sssss", str});
        ItemsMap[element['types']].add(element['video_url']);
      } else {
        ItemsMap[element['types']] = [];
      }
    });
}
}
