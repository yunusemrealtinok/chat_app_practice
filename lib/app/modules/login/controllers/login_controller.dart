import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  void loginWithPhoneNumber() {
    Get.toNamed(Routes.PHONE_AUTH);
  }

  @override
  void onInit() {
    //Listener example do not use
    // ExampleManager.instance.addListener(() { });
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
}
