// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  
  late bool logoCheck = false;

  late bool loggedCheck = false;

  late bool isStudent = false;

  @override
  void initState() {
    super.initState();

    // app.appController.getLocation();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: initScreen(context),
      backgroundColor: Colors.white,
    );
  }

  startTime() async {

    print(logoCheck);

    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() async {
    // SharedPreferences _prefs = await SharedPreferences.getInstance();

    // if (_prefs.containsKey("UserId")) {
    //   Get.toNamed(HOME);
    // } else {
    //   Get.toNamed(LOGIN);
    // }
    // app.appController.getLocation();

    // Get.toNamed(LOGIN);
  }

  // initScreen(BuildContext context) {
  //   return SafeArea(
  //     child: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [AppLogo(), SizedBox(height: 50), WidgetUtil.loader()],
  //       ),
  //     ),
  //   );
  // }
}
