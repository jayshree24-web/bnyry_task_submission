import 'package:complaint_management_system/login_page.dart';
import 'package:complaint_management_system/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //authcontroller instance..
  static AuthController instance = Get.find();
  //email , password , name....
  late Rx<User?> _user;
  //creating variable for firebase authentication module
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth
        .userChanges()); // bind the user with the stream and our user would be notified
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("Login page");
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => WelcomePage());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About user",
        "User message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Account creation failed",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
