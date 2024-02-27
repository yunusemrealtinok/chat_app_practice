import 'package:chat_app_practice/app/view_items/phone_verification_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/username_entry_controller.dart';

class UsernameEntryView extends GetView<UsernameEntryController> {
  const UsernameEntryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhoneVerificationTextField(
            hintText: "Enter your name",
            textEditingController: controller.userNameController,
            onSubmitted: controller.register,
            textInputType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
