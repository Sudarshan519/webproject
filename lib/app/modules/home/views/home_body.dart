//body
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webproject/app/data/utils/constant.dart';
import 'package:webproject/app/modules/home/controllers/home_controller.dart';

import 'home_card.dart';

class HomeBody extends StatelessWidget {
  HomeBody({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20),
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        child: Icon(
                          Icons.sort,
                          color: Colors.grey[800],
                        ),
                        onTap: () {
                          controller.isExpanded.toggle();
                        }),
                    SizedBox(width: 20),
                    height > width && controller.isExpanded.value
                        ? Container()
                        : Container(
                            width: width * .4,
                            color: Colors.grey.withOpacity(.2),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 20, top: 20),
                                  suffixIcon: Icon(Icons.search),
                                  hintText: 'Search ...'),
                            )),
                    Spacer(),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.chat_bubble,
                          size: 26,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 7,
                            child: Text(
                              '5',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.notifications_off,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'https://appstack.bootlab.io/img/avatars/avatar.jpg'),
                    ),
                    Text('Chris Wood'),
                    SizedBox(width: 20),
                    RotatedBox(
                        quarterTurns: 45,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Wrap(children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  Spacer(),
                  SizedBox(width: 20),
                  Container(
                      height: 30,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      width: 90,
                      child: Row(children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.calendar_today,
                            size: 15, color: Colors.black),
                        Text(
                          'Today',
                          style: smallText,
                        ),
                        SizedBox(width: 5),
                        RotatedBox(
                            quarterTurns: 45,
                            child: Icon(Icons.arrow_forward_ios, size: 15))
                      ])),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    //color: Colors.blue,
                    child: Icon(
                      Icons.filter_alt_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.refresh, size: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ]),
              ),
              SizedBox(height: 20),
              Container(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, top: 40),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: 300,
                      height: 200,
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome Back,\n Chris!',
                              style: largeText.copyWith(
                                  color: Colors.blueAccent, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'App,\n DashBoard!',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(child: FlutterLogo()),
                        SizedBox(width: 20)
                      ]),
                    ),
                    // SizedBox(width: 20,height: 20,),
                    HomeCardWidget(
                      label: '\$2400.0',
                      sublabel: 'Total Earnings',
                      profit: '+20.32',
                    ),
                    HomeCardWidget(
                      label: '43',
                      sublabel: 'Total Earnings',
                      profit: '-10.32',
                    ),
                    HomeCardWidget(
                      label: '2400.70',
                      sublabel: 'Total Revenue',
                      profit: '+8.32',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                width: double.infinity,
                padding: EdgeInsets.only(left: 10, top: 10, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Daily feed',
                      style: largeText,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://appstack.bootlab.io/img/avatars/avatar-5.jpg')),
                      title: Row(
                        children: [
                          Text(
                            'Ashley Briggs started following Stacie Hall',
                            style: smallText,
                          )
                        ],
                      ),
                      subtitle: Text('Today 7:51 pm'),
                      trailing: Text(
                        '5 min ago',
                        style: smallText.copyWith(color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://appstack.bootlab.io/img/avatars/avatar.jpg')),
                      title: Row(
                        children: [
                          Text(
                            "Chris Wood posted something on\n Stacie Hall's timeline",
                            style: smallText,
                          )
                        ],
                      ),
                      subtitle: Text('Today 7:51 pm'),
                      trailing: Text(
                        '5 min ago',
                        style: smallText.copyWith(color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://appstack.bootlab.io/img/avatars/avatar-4.jpg')),
                      title: Row(
                        children: [
                          Text(
                            "Stacie Hall posted a new blog",
                            style: smallText,
                          )
                        ],
                      ),
                      subtitle: Text('Today 6:35 pm'),
                      trailing: Text(
                        '1 hour ago',
                        style: smallText.copyWith(color: Colors.grey),
                      ),
                    ),
                    Divider(),
                    Container(
                      width: double.infinity,
                      child: TextButton(
                          child: Text('Load more'),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              primary: Colors.white)),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: width + 100,
                height: 40,
                color: Colors.white,
                child: Row(
                  children: [
                    Text('Support',
                        style: smallText.copyWith(color: Colors.grey))
                  ],
                ),
              )
              // SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     HomeCardWidget(),
              //     SizedBox(width: 20),
              //     Container(
              //       decoration: BoxDecoration(
              //           color: Colors.blue[100],
              //           borderRadius: BorderRadius.circular(20)),
              //       width: 300,
              //       height: 200,
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'Reports',
              //             style: TextStyle(color: Colors.blueAccent),
              //           ),
              //           Text(
              //             'Errors',
              //             style: TextStyle(color: Colors.blueAccent),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //           color: Colors.blue[100],
              //           borderRadius: BorderRadius.circular(20)),
              //       width: 300,
              //       height: 200,
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'Categories',
              //             style: TextStyle(color: Colors.blueAccent),
              //           ),
              //           Text(
              //             '13 items',
              //             style: TextStyle(color: Colors.blueAccent),
              //           ),
              //         ],
              //       ),
              //     ),
              //     SizedBox(width: 20),
              //     Container(
              //       decoration: BoxDecoration(
              //           color: Colors.blue[100],
              //           borderRadius: BorderRadius.circular(20)),
              //       width: 300,
              //       height: 200,
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'Chats',
              //             style: TextStyle(color: Colors.blueAccent),
              //           ),
              //           Text(
              //             'logs',
              //             style: TextStyle(color: Colors.blueAccent),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
