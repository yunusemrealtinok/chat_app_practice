import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../view_items/login_button.dart';
import '../controllers/logout_controller.dart';

class LogoutView extends GetView<LogoutController> {
  const LogoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final c = Get.put(LogoutController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 92.h,
          ),
          SizedBox(
            height: 40.h,
          ),
          LoginButton(
            loginText: "Logout",
            loginIcon: Icons.logout,
            onTap: c.logout,
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
