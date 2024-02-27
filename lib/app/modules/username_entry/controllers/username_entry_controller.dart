import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../managers/auth_manager.dart';
import '../../../routes/app_pages.dart';

class UsernameEntryController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  void register(String username) {
    String? uid = AuthManager.instance.uid;
    DocumentReference ref =
        FirebaseFirestore.instance.collection("usersCollection").doc(uid);
    ref.set({"uid": uid, "name": username});
    Get.offAllNamed(Routes.HOME);
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
