import 'dart:async';

import 'package:get/get.dart';
import 'package:webproject/app/data/utils/constant.dart';
import 'package:webproject/app/modules/home/bindings/home_binding.dart';
import 'package:webproject/app/modules/home/views/home_view.dart';
import 'package:webproject/app/modules/login/bindings/login_binding.dart';
import 'package:webproject/app/modules/login/views/login_view.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    loadPage();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  loadPage() {
    var _duration = Duration(seconds: 1);

    return Timer(_duration, navigate);
  }

  void navigate() {
    if (auth.currentUser == null)
      Get.off(() => LoginView(), binding: LoginBinding());
    else
      Get.off(() => HomeView(), binding: HomeBinding());
  }
}
