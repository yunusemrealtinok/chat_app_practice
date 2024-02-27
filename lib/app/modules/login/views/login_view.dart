import 'package:chat_app_practice/app/view_items/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 92.h,
          ),
          Text(
            "Welcome to ChatApp",
            style: TextStyle(
                fontSize: 25.sp,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40.h,
          ),
          LoginButton(
              loginText: "Login with PhoneNumber",
              loginIcon: Icons.phone,
              onTap: () {
                controller.loginWithPhoneNumber();
              }),
        ],
      ),
    );
  }
}
