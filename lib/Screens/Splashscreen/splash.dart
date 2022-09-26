import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Welcome/welcome.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late Animation animation,
      delayedAnimation,
      muchDelayAnimation,
      transfor,
      fadeAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);

    animation = Tween(begin: 0.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    transfor = BorderRadiusTween(
            begin: BorderRadius.circular(125.0),
            end: BorderRadius.circular(0.0))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.ease));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    animationController.forward();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Welcome()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
              backgroundColor: const Color(0xFFFE724C),
              body: Stack(
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      "assets/images/splash.png",
                    ),
                  ),
                ],
              ));
        });
  }
}