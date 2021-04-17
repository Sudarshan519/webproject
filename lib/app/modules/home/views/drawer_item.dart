
//drawer item
import 'package:flutter/material.dart';
import 'package:webproject/app/data/utils/constant.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key key,
    this.label,
    this.icon,
    this.onPressed,
    this.activeitems,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final Function onPressed;
  final int activeitems;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        color: Colors.white,
      ),
      SizedBox(width: 10),
      Text(
        label,
        style: smallText.copyWith(
          color: Colors.white,
        ),
      ),
      Spacer(),
      activeitems == null
          ? Text('')
          : Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              color: Colors.blue,
              child: Text(activeitems.toString(),
                  style: TextStyle(color: Colors.white)),
            ),
      SizedBox(width: 20),
    ]);
  }
}
