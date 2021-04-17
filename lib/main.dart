import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webproject/app/data/utils/theme/theme.dart';
import 'package:webproject/app/modules/home/bindings/home_binding.dart';
import 'package:webproject/app/modules/splash/bindings/splash_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: HomeBinding(),
    ),
  );
}
