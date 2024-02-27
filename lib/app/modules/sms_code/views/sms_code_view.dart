import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../view_items/phone_verification_textfield.dart';
import '../controllers/sms_code_controller.dart';

class SmsCodeView extends GetView<SmsCodeController> {
  const SmsCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhoneVerificationTextField(
            hintText: "Type Verification Code",
            textEditingController: controller.smsCodeController,
            onSubmitted: controller.onSubmittedSmsCode,
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
