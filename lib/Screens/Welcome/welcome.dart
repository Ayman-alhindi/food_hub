import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/background.png",
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.1),
                      Colors.black,
                    ],
                    stops: const [
                      0.0,
                      1.0
                    ])),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 32,
                width: 55,
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Color(0xFFFE724C)),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            child: Image.asset(
              "assets/images/welcomeTXT.png",
            ),
          ),
          Positioned(
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/signWith.png",
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 54,
                        width: 139.26,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                            Text("Facebook"),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      const SizedBox(width:20),
                      Container(
                        height: 54,
                        width: 139.26,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(FontAwesomeIcons.google, color: Colors.green),
                            Text("Google"),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 54,
                    width: 315,
                    child: const Center(child: Text("Start with email or phone",
                      style: TextStyle(color: Colors.white),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                        border: Border.all(color: Colors.white)                  ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Text(
                        "already have an account ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
