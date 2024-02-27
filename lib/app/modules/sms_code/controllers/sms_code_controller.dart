import 'package:chat_app_practice/app/managers/auth_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SmsCodeController extends GetxController {
  TextEditingController smsCodeController = TextEditingController();

  void onSubmittedSmsCode(String smsCode) async {
    bool isVerified = await AuthManager.instance.verifySms(smsCode);
    if (isVerified) {
      String? uid = AuthManager.instance.uid;
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection("usersCollection")
          .doc(uid)
          .get();
      if (documentSnapshot.exists) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.USERNAME_ENTRY);
      }
    } else {
      print("Something wrong");
    }
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
