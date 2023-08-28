import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummy_kart/ui/screens/auth/login_page.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
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
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                      )
                    ],
                  ),
                ),
              ])))
    ]);
  }
}
