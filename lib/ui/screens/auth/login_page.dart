import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String email;
    String password;
    TextEditingController emailTextController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Sign In",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Column(
              children: <Widget>[
                Text(
                  "Welcome to Tamang Food Services",
                  style: TextStyle(
                      fontFamily: "Yu Gothic",
                      fontWeight: FontWeight.w500,
                      fontSize: 36.00),
                ),
                Text(
                  "Enter your Phone number or Email address for sign in. Enjoy your food :)",
                  style: TextStyle(fontSize: 18.00, color: Colors.grey),
                ),
                TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    decoration: InputDecoration(
                        label: Text("Email Address"),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.grey))),
                TextField(
                    onChanged: (text) {
                      password = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text("Password"),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.grey))),
                Padding(
                    padding: EdgeInsets.all(16.00),
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.grey),
                    )),
                ElevatedButton(
                  child: const Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFEEA734),
                      fixedSize: Size(400, 52),
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                Padding(
                    padding: EdgeInsets.all(16.00),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Don't have account ?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Create Account",
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    )),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(padding: EdgeInsets.all(12.00)),
                ElevatedButton.icon(
                  icon: Icon(Icons.facebook, color: Colors.white),
                  //icon data for elevated button
                  label: Text("Connect with Facebook",
                      style: TextStyle(color: Colors.white)),
                  //label text
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF395998),
                      fixedSize: Size(400, 52),
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                ),
                Padding(padding: EdgeInsets.all(12.00)),
                ElevatedButton.icon(
                  icon:
                      Icon(Icons.alternate_email_rounded, color: Colors.white),
                  //icon data for elevated button
                  label: Text("Connect with Google",
                      style: TextStyle(color: Colors.white)),
                  //label text
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4285F4),
                      fixedSize: Size(400, 52),
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    ;
                  },
                )
              ],
            )),
      ),
    );
  }
}
