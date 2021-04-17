
//drawer
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webproject/app/modules/home/controllers/home_controller.dart';

import 'drawer_item.dart';

class DrawerHome extends StatelessWidget {
  DrawerHome({
    Key key,
    @required this.width,
  }) : super(key: key);
  final controller = Get.find<HomeController>();
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .3,
      padding: EdgeInsets.only(left: 20),
      height: double.infinity,
      color: Colors.blueGrey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.stacked_line_chart_rounded,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(width: 10),
            Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ]),
          SizedBox(
            height: 40,
          ),
          Text(
            'Pages',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          DrawerItem(
            label: 'Dashboard',
            icon: Icons.dashboard,
            activeitems: 4,
          ),
          DrawerItem(label: 'Products', icon: Icons.menu),
          DrawerItem(
            label: 'Orders',
            icon: Icons.shopping_cart,
            activeitems: 14,
          )
        ],
      ),
    );
  }
}
