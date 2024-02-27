import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.loginText,
      required this.loginIcon,
      required this.onTap});

  final String loginText;
  final IconData loginIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          height: 70.h,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Icon(
                    loginIcon,
                    color: Colors.black,
                    size: 30.sp,
                  ),
                ),
                Text(
                  loginText,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
