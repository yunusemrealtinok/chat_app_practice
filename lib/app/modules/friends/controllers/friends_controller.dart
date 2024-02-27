import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class FriendsController extends GetxController {
  RxList<String> userNameList = <String>[].obs;

  onTapFriendCard() {
    Get.toNamed(Routes.MESSAGING);
  }

  void fetchUserNames() {
    FirebaseFirestore.instance
        .collection("usersCollection")
        .snapshots()
        .listen((event) {
      userNameList.value =
          event.docs.map((e) => e.data()["name"] as String).toList();
    });
  }

  @override
  void onInit() {
    fetchUserNames();
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
