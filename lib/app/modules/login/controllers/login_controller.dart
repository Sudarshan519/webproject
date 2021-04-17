import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:webproject/app/data/utils/constant.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;
  final formkey = GlobalKey<FormState>().obs;
  final count = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    await initialization;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
