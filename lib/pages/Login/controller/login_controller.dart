import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString username = "root".obs;
  RxString password = "root".obs;

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
  void setUsername(String user) {
    username.value = user;
  }
  void setPassword(String p) {
    password.value = p;
  }
}
