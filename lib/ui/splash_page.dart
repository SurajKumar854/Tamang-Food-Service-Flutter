import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummy_kart/ui/on_board_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var appName = "YummyTummy";

/*  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => OnBoardPage())));
  }*/

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        color: Colors.white,
      ),
      Image.asset("assets/images/circle_bg.png"),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
              alignment: Alignment.center,
              color: Color(0xF2E6E6),
              child: Column(children: <Widget>[
                Expanded(flex: 1, child: Spacer()),
                Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/logo.png",
                                width: 72,
                                height: 72,
                              ),
                              Text(
                                "Tamang \n Food Service",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 42,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )
                            ]),
                        Spacer(),
                        Image.asset("assets/images/splash.png"),
                        Spacer()
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      children: <Widget>[
                        const Text(
                          "Welcome",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF3A3A3A),
                              fontWeight: FontWeight.w700),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(36, 8, 36, 8),
                          child: const Text(
                            "It’s a pleasure to meet you. We are excited that you’re here so let’s get started!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 21,
                                color: Color(0xFF3A3A3A),
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text(
                          'GET STARTED',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEEA734),
                            side: const BorderSide(
                                width: 2.0, color: Colors.black),
                            fixedSize: Size(400, 52),
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ])))
    ]);
  }
}
