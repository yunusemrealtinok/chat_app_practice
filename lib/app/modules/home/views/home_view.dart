import 'package:chat_app_practice/app/modules/logout/views/logout_view.dart';
import 'package:chat_app_practice/app/modules/messaging/views/messaging_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../friend_request/views/friend_request_view.dart';
import '../../friends/views/friends_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        FriendRequestView(),
        FriendsView(),
        MessagingView(),
        LogoutView(),
      ]),
    );
  }
}
