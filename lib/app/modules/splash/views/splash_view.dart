import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webproject/app/widgets/loading.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('SplashView'),
      //   centerTitle: true,
      // ),
      body: Material(
        child: Container(
          child: Center(
            child: Loading(),
          ),
        ),
      ),
    );
  }
}
