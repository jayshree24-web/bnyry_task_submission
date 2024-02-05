import 'package:complaint_management_system/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Container(
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "img/login.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                  Text("Sign into your account",
                      style: TextStyle(fontSize: 20, color: Colors.grey[500])),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Your Registration Number',
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: Colors.blue,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "Your Password",
                            prefixIcon: Icon(
                              Icons.password_rounded,
                              color: Colors.blue,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text("Forget Password",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500])),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 100, left: 100),
                  width: w * 0.5,
                  height: h * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    image: DecorationImage(
                        image: AssetImage(
                          "img/R.png",
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.1),
            Center(
              child: RichText(
                  text: TextSpan(
                text: "Don't have an account ?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                      text: " Create",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => SignUpPage()))
                ],
              )),
            ),
          ],
        ));
  }
}
