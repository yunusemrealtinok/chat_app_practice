import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneVerificationTextField extends StatelessWidget {
  const PhoneVerificationTextField(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      required this.onSubmitted, required this.textInputType});

  final TextEditingController textEditingController;
  final String hintText;
  final void Function(String) onSubmitted;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 70.h,
        child: Center(
          child: TextField(
            onSubmitted: onSubmitted,
            controller: textEditingController,
            keyboardType: textInputType,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}
