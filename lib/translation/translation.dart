import 'package:get/get.dart';

class Messages extends Translations {

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'zh_CN': {
      "username": "用户名",
      'username-tips': "用户名或邮箱",
      "password": "密码",
      "password-tips": "登录密码",
      "register": "注册",
      "login": "登录",
      'more': "更多",
      "more-services": "更多服务",
      "username": "用户名",
    },
    'en_US': {
      "username": "username",
      'username-tips': "username or email",
      "password": "password",
      "password-tips": "login password",
      "register": "register",
      "login": "login",
      'more': "more",
      "more-services": "more services",
    }
  };
}