import 'package:flet/utils/request.dart';

class NewsApi {
  static getNewsListsInfo(params) {
    return Request.post(
      "/newsList",
      params: params,
    );
  }
}