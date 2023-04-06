import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final curretPage = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void pageTaped(int value) {
    curretPage.value=value;
  }
}
