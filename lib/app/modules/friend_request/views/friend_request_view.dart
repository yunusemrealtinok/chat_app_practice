import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/friend_request_controller.dart';

class FriendRequestView extends GetView<FriendRequestController> {
  const FriendRequestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FriendRequestView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FriendRequestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
