
import 'package:flutter/material.dart';
import 'package:webproject/app/data/utils/constant.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key key,
    this.label,
    this.sublabel,
    this.profit,
    this.image,
    this.isRecent,
  }) : super(key: key);
  final String label;
  final String sublabel;
  final String profit;
  final String image;
  final bool isRecent;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 40),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      width: 300,
      height: 200,
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '  \$ $label',
              style:
                  largeText.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              sublabel,
              style: smallText.copyWith(color: Colors.grey[800]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green[200]),
                    child: Row(
                      children: [
                        Text(
                          '$profit%',
                          style: smallText.copyWith(color: Colors.green[900]),
                        ),
                      ],
                    )),
                SizedBox(width: 20),
                Text(
                  'Since last week',
                  style: smallText.copyWith(color: Colors.grey[800]),
                )
              ],
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
            backgroundColor: Colors.blue[200], child: Icon(Icons.attach_money)),
        SizedBox(width: 20)
      ]),
    );
  }
}
