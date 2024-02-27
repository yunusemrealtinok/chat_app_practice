import 'package:chat_app_practice/app/view_items/friend_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  const FriendsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final c = Get.put(FriendsController());
    return Obx(
      () => Scaffold(
        body: ListView.builder(
          itemCount: c.userNameList.value.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: FriendCard(
                onTap: c.onTapFriendCard,
                userName: c.userNameList.value[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
