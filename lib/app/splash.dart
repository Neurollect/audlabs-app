import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:audlabs/controllers/splash_controller.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.splashAnimation();
    return const Scaffold(
      body: Center(
        child: Text(
          'AUDLABS',
          style: TextStyle(
            fontFamily: 'Blanka',
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
