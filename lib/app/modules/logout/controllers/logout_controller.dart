import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LogoutController extends GetxController {
  void logout() {
    Get.offNamed(Routes.LOGIN);
    print("logout");
  }

  final count = 0.obs;
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

  void increment() => count.value++;
}
