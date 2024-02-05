import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "img/signup.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "a@a.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
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
                "Sign out",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      //SizedBox(height: w * 0.1),
      /*Center(
              child: RichText(
                  text: TextSpan(
                text: "Don't have an account ?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
              )),
            ),*/
    );
  }
}
