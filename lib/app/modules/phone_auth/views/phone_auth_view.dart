import 'package:chat_app_practice/app/view_items/phone_verification_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/phone_auth_controller.dart';

class PhoneAuthView extends GetView<PhoneAuthController> {
  const PhoneAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhoneVerificationTextField(
            hintText: "Input Phone Number",
            textEditingController: controller.phoneNumberController,
            onSubmitted: (String phoneNumber) {
              controller.onSubmittedPhoneNumber(phoneNumber);
            },
            textInputType: TextInputType.phone,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
