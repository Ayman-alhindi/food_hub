import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodhub/Component/ink_well_custom.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: InkWellCustom(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/login.PNG",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding:  EdgeInsets.fromLTRB(20, 30, 20, 0),
                        child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 10,),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                               decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(Icons.email,
                                      color: Colors.grey, size: 20.0,),
                                  ),

                                  contentPadding: const EdgeInsets.only(left: 15.0, top: 15.0),
                                  hintText: "Email",
                                  hintStyle: const TextStyle(color: Colors.grey, fontFamily: "Cairo")
                              ),

                            ),
                            const SizedBox(height: 40,),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  prefixIcon: GestureDetector(
                                    onTap: (){

                                    },
                                    child: const Padding(
                                      padding:  EdgeInsets.only(right: 10),
                                      child: Icon( Icons.visibility,
                                        color: Colors.grey, size: 20.0,),
                                    ),
                                  ),

                                  contentPadding: const EdgeInsets.only(left: 15.0, top: 15.0),
                                  hintText: "Password",
                                  hintStyle: const TextStyle(color: Colors.grey, fontFamily: "Cairo")
                              ),

                            )

                          ],
                        ),
                        const SizedBox(height: 20,),

                        const Text("Forgot Password?",style: TextStyle(color: Color(0xFFFE724C)),),

                        const SizedBox(height: 20,),
                             ButtonTheme(
                          height: 50.0,
                          minWidth: MediaQuery.of(context).size.width,
                          child: RaisedButton.icon(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                            elevation: 0.0,
                            color: const Color(0xFFFE724C),
                            icon: const Text(''),
                            label: const Text("Login"),
                            onPressed: (){
                            },
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text("You don’t have account?",style: TextStyle(color: Colors.grey),),
                            const SizedBox(width: 10,),
                            InkWell(
                              onTap: () {

                              },
                              child: const Text("Sign Up",style: TextStyle(color: Color(0xFFFE724C)),),
                            ),

                          ],
                        ),
                        const SizedBox(height: 50,),
                        Image.asset(
                          "assets/images/signWith.png",
                          color: Colors.black,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                  boxShadow: const [BoxShadow(blurRadius: 10,color: Colors.grey,offset: Offset(1,3))]
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
                                  boxShadow: const [BoxShadow(blurRadius: 10,color: Colors.grey,offset: Offset(1,3))]
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),

                ],
              )),
        ),
      ),
    );
  }
}
