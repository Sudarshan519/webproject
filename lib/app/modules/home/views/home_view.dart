import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'home_body.dart';
import 'home_drawer.dart';

//main
class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Obx(
            () => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                controller.isExpanded.value
                    ? DrawerHome(width: height > width ? 650 : 700)
                    : Container(),
                HomeBody(
                    width: controller.isExpanded.value ? width * .7 : width,
                    height: height),
              ],
            ),
          ),
        ));
  }
}
