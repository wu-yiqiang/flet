import 'package:get/get.dart';
class UserController extends GetxController {
  RxBool isChinese = true.obs;
  RxBool isDark = false.obs;
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void setCurrentLang(flag) {
    isChinese.value = flag;
  }
  void setDarkTheme(flag) {
    isDark.value = flag;
  }
}

