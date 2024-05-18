import 'package:flet/utils/request.dart';

// export const playVideo = (name: string, type: string) =>
// request.get(`/flet/video/play?name=${name}&types=${type}`)

class MoviesApi {
  static getBanners() {
    return Request.get(
      "/video/banner",
    );
  }

  static getVideoList() {
    return Request.post(
      "/video",
    );
  }
}
