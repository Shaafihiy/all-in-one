// ignore_for_file: unnecessary_string_escapes, unused_local_variable, prefer_const_constructors

import 'package:allinone/component/colors.dart';
import 'package:allinone/widgets/buttons.dart';
import 'package:allinone/widgets/large_buttons.dart';
import 'package:allinone/widgets/text_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButtons(),
            Positioned(
                top: 100,
                left: 0,
                child: Text("All Banking Apps In One",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF293952)))),
            Positioned(
                left: 40,
                top: 85,
                child: Text("All Banking Apps In One",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            Positioned(
                left: 200,
                top: 200,
                child: Text("Net Amount:₦6000.00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer()
        ],
      ),
    );
  }

  _buttonContainer() {
    return Positioned(
        bottom: 2,
        right: 75,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 240,
                    child: Stack(children: [
                      Positioned(
                          bottom: 0,
                          child: Container(
                            color: Color(0xFFeef1f4).withOpacity(0.7),
                            height: MediaQuery.of(context).size.height - 300,
                            width: MediaQuery.of(context).size.width,
                          )),
                      Positioned(
                        right: 78,
                        bottom: 120,
                        child: Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 25),
                          width: 55,
                          height: 250,
                          decoration: BoxDecoration(
                              color: AppColor.mainColor,
                              borderRadius: BorderRadius.circular(29)),
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppButtons(
                                icon: Icons.cancel,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              AppButtons(
                                icon: Icons.add,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onTap: () {},
                                text: "My Dashboard",
                              ),
                              AppButtons(
                                icon: Icons.logout,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onTap: () {},
                                text: "Log Out",
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  );
                });
          },
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/lines.png")),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        offset: Offset(0, 1),
                        color: Color(0xFF11324d).withOpacity(0.2))
                  ])),
        ));
  }

  _mainBackground() {
    return Positioned(
        bottom: 10,
        left: 0,
        child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/background.png"))),
            child: Container(
                margin: const EdgeInsets.only(top: 10, left: 400),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("images/ali.png"))),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ))));
  }

  _curveImageContainer() {
    return Positioned(
        left: 0,
        right: -2,
        bottom: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/curve.png"))),
        ));
  }

  _listBills() {
    return Positioned(
        top: 320,
        left: 0,
        right: 0,
        bottom: 0,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20.0,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3, color: Colors.grey),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage("images/gtb.png"))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Guaranty Trust Bank",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedText(
                                  text:
                                      "Service temporarily unavailable, check back later",
                                  color: AppColor.green),
                              SizedBox(height: 10)
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.selectBackground),
                                    child: Center(
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.selectColor),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "₦1000.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                              Container(
                                width: 5,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20.0,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3, color: Colors.grey),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage("images/fb.png"))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "First Bank",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedText(
                                  text:
                                      "Service temporarily unavailable, check back later",
                                  color: AppColor.green),
                              SizedBox(height: 10)
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.selectBackground),
                                    child: Center(
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.selectColor),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "₦2000.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                              Container(
                                width: 5,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20.0,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3, color: Colors.grey),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "images/polaris.png"))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Polaris Bank",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedText(
                                  text:
                                      "Service temporarily unavailable, check back later",
                                  color: AppColor.green),
                              SizedBox(height: 10)
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.selectBackground),
                                    child: Center(
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.selectColor),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "₦1000.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                              Container(
                                width: 5,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20.0,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3, color: Colors.grey),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "images/access.png"))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Access Bank",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedText(
                                  text:
                                      "Service temporarily unavailable, check back later",
                                  color: AppColor.green),
                              SizedBox(height: 10)
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.selectBackground),
                                    child: Center(
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.selectColor),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "₦1500.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                              Container(
                                width: 5,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20.0,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3, color: Colors.grey),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage("images/wema.png"))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Wema Bank",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedText(
                                  text:
                                      "Service temporarily unavailable, check back later",
                                  color: AppColor.green),
                              SizedBox(height: 10)
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.selectBackground),
                                    child: Center(
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.selectColor),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "₦500.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: AppColor.mainColor),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                              Container(
                                width: 5,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                              )
                            ],
                          )
                        ],
                      )),
                )
              ],
            );
          },
        ));
  }

  _payButtons() {
    return Positioned(
        bottom: 280,
        child: AppLargeButton(
          text: "Make Transactions",
          textColor: Colors.black87,
        ));
  }
}
