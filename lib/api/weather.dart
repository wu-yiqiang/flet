import 'package:flet/utils/request.dart';

class WeatherApi {
  static getWeatherInfo(params) {
    return Request.post(
      "/weather",
      params: params,
    );
  }
}