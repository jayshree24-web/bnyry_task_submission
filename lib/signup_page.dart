import 'package:complaint_management_system/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //  print(emailController);

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
          Container(
            width: w,
            margin: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      //onChanged: () {},

                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'Your Registration Number',
                          prefixIcon: Icon(
                            Icons.perm_identity,
                            color: Colors.blue,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
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
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Your Password",
                          prefixIcon: Icon(
                            Icons.password_rounded,
                            color: Colors.blue,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
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
                    /*Text("Forget Password",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500])),*/
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.register(
                  emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
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
                  "Sign up",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.back(),
                    text: "Have an account?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                    ))),
          )
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
