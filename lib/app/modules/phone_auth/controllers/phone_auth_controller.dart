import 'package:chat_app_practice/app/managers/auth_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PhoneAuthController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  void onSubmittedPhoneNumber(phoneNumber) async {
    await AuthManager.instance.verifyPhoneNumber(phoneNumber);
    Get.toNamed(Routes.SMS_CODE);
  }

  final count = 0.obs;
  @override
  void onInit() {
    AuthManager.instance.addListener(() {
      Get.toNamed(Routes.SMS_CODE);
    });
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
