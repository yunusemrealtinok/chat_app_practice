import 'package:chat_app_practice/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.dark,
      ),
    ),
  );
}

class Insan {
  Insan._();
  static Insan instance = Insan._();

  String name = "yun";

  onTap() {
    name = "yuno";
  }
}
