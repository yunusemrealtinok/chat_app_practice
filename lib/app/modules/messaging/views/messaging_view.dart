import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../view_items/message_model.dart';
import '../controllers/messaging_controller.dart';

class MessagingView extends GetView<MessagingController> {
  MessagingView({Key? key}) : super(key: key);

  final List<MessageModel> messageModelList = [
    MessageModel(
        fromWho: "baba", time: DateTime(2024, 2, 24, 22, 52), message: "selam"),
    MessageModel(
        fromWho: "yunus",
        time: DateTime(2024, 2, 24, 22, 53),
        message: "as hg"),
    MessageModel(
        fromWho: "baba", time: DateTime(2024, 2, 24, 22, 54), message: "hb"),
    MessageModel(
        fromWho: "yunus", time: DateTime(2024, 2, 24, 22, 55), message: "nbr"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildAppBar(username: "Yunus", imageUrl: "assets/user_pp.png"),
          _buildChatterProfile(
              username: 'Baba', imageUrl: "assets/user_pp.png", isMe: false),
          _buildChatBubbles(),
          _buildMessageBar(),
        ],
      ),
    );
  }

  Widget _buildAppBar({required String username, required String imageUrl}) {
    return AppBar(
      title: Row(children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(imageUrl),
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(username),
      ]),
    );
  }

  Widget _buildChatterProfile(
      {required String username,
      required String imageUrl,
      required bool isMe}) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Row(children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(username),
        ]),
      ],
    );
  }

  Widget _buildChatBubbles() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          bool received = messageModelList.elementAt(index).fromWho == "baba";
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: BubbleSpecialThree(
              text: messageModelList.elementAt(index).message,
              color: received ? Color(0xFF1B97F3) : Colors.pink,
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
              isSender: received,
            ),
          );
        },
        itemCount: messageModelList.length,
      ),
    );
  }

  Widget _buildMessageBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MessageBar(
          onSend: (_) => print(_),
          actions: [
            InkWell(
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 24,
              ),
              onTap: () {},
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: InkWell(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.green,
                  size: 24,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
