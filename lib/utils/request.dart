import 'package:dio/dio.dart';
import 'dart:convert';
// import 'package:common_utils/common_utils.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
//代码中 LogUtil 来自于 common_utils 插件，EasyLoading 来自于 flutter_easyloading 插件，可以根据自己的习惯替换。

String StringifyUrlSearch(String path,Map search) {
  String newPath = path+"?";
  search.forEach((k,v) =>
    newPath += '${k}=${v}&',
  );
  newPath = newPath.substring(0, newPath.length - 1);
  return newPath;
}

enum DioErrorType {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT,
  RESPONSE,
  RECEIVE_TIMEOUT
}


class Request {
  // 配置 Dio 实例
  static BaseOptions _options = BaseOptions(
    baseUrl: 'http://192.168.110.101:8080/flet',
    connectTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 10),
    headers: {
      'Accept': 'application/json, */*',
      'Content-Type': 'application/json',
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MDQ5MDc0MzYsIm5hbWUiOiJzdXR0ZXIiLCJpc3MiOiJhcHAiLCJuYmYiOjE3MDQ4NjMyMzZ9.qYGo0OspvaiJMYGMSdc1cCs0b62UL6lV1goVpbptG8c"
    },
    contentType: "application/json",
  );

  static Dio _dio = Dio(_options);


  // _request 是核心函数，所有的请求都会走这里
  static Future<T> _request<T>(String path, {String? method, Map? params, data}) async {
    // restful 请求处理
    if (params != null) path = StringifyUrlSearch(path, params);
    // LogUtil.v(data, tag: '发送的数据为：');
    // (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
    //     client.badCertificateCallback = (cert, String host, int port) => true;
    //     client.findProxy = (uri) {
    //       print(uri);
    //       // 代理，这里localhost:888需要根据实际情况设置相应代理地址
    //       String proxy = 'PROXY 127.0.0.1:9527';
    //       return proxy;
    //     };
    // };
    try {
      // EasyLoading.show(status: 'loading...');
      Response response = await _dio.request(path,
          data: data, options: Options(method: method));
      // EasyLoading.dismiss();
      if (response.statusCode == 200 || response.statusCode == 201) {
        try {
          if (response.data['code'] != 200) {
            // LogUtil.v(response.data['status'], tag: '服务器错误，状态码为：');
            // EasyLoading.showError('服务器错误，状态码为：${response.data['status']}');
            return Future.error(response.data['message']);
          } else {
            // LogUtil.v(response.data, tag: '响应的数据为：');
            if (response.data is Map) {
              return response.data;
            } else {
              // 这里以后需要修改 可能存在问题
              return jsonDecode(response.data.toString());
            }
          }
        } catch (e) {
          // LogUtil.v(e, tag: '解析响应数据异常');
          return Future.error('解析响应数据异常');
        }
      } else {
       //  LogUtil.v(response.statusCode, tag: 'HTTP错误，状态码为：');
        // EasyLoading.showError('HTTP错误，状态码为：${response.statusCode},');
        _handleHttpError(response.statusCode!);
        return Future.error('HTTP错误');
      }
    } on DioError catch (e, s) {
      // LogUtil.v(_dioError(e), tag: '请求异常');
      // EasyLoading.showError(_dioError(e));
      return Future.error(_dioError(e));
    } catch (e, s) {
     // LogUtil.v(e, tag: '未知异常');
      return Future.error('未知异常');
    }
  }

  // 处理 Dio 异常
  static String _dioError(DioError error) {
    print({"网络错误 error", error});
    switch (error.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        return "网络连接超时，请检查网络设置";
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        return "服务器异常，请稍后重试！";
        break;
      case DioErrorType.SEND_TIMEOUT:
        return "网络连接超时，请检查网络设置";
        break;
      case DioErrorType.RESPONSE:
        return "服务器异常，请稍后重试！";
        break;
      case DioErrorType.CANCEL:
        return "请求已被取消，请重新请求";
        break;
      case DioErrorType.DEFAULT:
        return "网络异常，请稍后重试！";
        break;
      default:
        return "Dio异常";
    }
  }



  static Future<T> get<T>(String path, {Map? params}) {
    return _request(path, method: 'get', params: params);
  }

  static Future<T> post<T>(String path, {Map? params, data}) {
    return _request(path, method: 'post', params: params, data: data);
  }

  // 这里只写了 get 和 post，其他的别名大家自己手动加上去就行
  // 处理 Http 错误码
  static void _handleHttpError(int errorCode) {
    String message;
    switch (errorCode) {
      case 400:
        message = '请求语法错误';
        break;
      case 401:
        message = '未授权，请登录';
        break;
      case 403:
        message = '拒绝访问';
        break;
      case 404:
        message = '请求出错';
        break;
      case 408:
        message = '请求超时';
        break;
      case 500:
        message = '服务器异常';
        break;
      case 501:
        message = '服务未实现';
        break;
      case 502:
        message = '网关错误';
        break;
      case 503:
        message = '服务不可用';
        break;
      case 504:
        message = '网关超时';
        break;
      case 505:
        message = 'HTTP版本不受支持';
        break;
      default:
        message = '请求失败，错误码：$errorCode';
    }
    // EasyLoading.showError(message);
  }
}