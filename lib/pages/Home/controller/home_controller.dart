import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;

  void setCurrent(No) {
    currentIndex.value = No;
  }
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
}
