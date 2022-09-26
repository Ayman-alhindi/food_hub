import 'dart:ui';

import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
          height:  225,
          width: 350,
          margin: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
              boxShadow: const [BoxShadow(blurRadius: 10,color: Colors.grey,offset: Offset(1,3))]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      height: 65,
                      width: 65,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/starbuck.png"),
                      ),
                    ),
                    Column(
                      children: [
                        Text("3 Item",style: TextStyle(color: Colors.grey[500]),),
                        const Text("Starbucks"),
                      ],
                    ),
                    const SizedBox(width: 90),
                    Column(
                      children: const [
                        Text("#32500",style: TextStyle(color: Color(0xFFFE724C)),)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text("Estimated Arrival",style: TextStyle(color: Colors.grey[500]),),
                      const Text("25 Min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const SizedBox(width: 60,),
                  Column(
                    children: [
                      Text("Now",style: TextStyle(color: Colors.grey[500]),),
                      const Text("Food on the way",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all(const Color(0xFFFE724C)),
                            foregroundColor:MaterialStateProperty.all(Colors.white),
                        ),
                        child:  const Text("Cancel"),
                        onPressed: () {
                        }
                    ),
                    const SizedBox(width: 50,),
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(const Color(0xFFFE724C)),
                          foregroundColor:MaterialStateProperty.all(Colors.white)),
                        child: const Text("Track Order"),
                        onPressed: () {
                        }
                    ),
                  ],
                ),
              ),

            ],
          )
      ),
    );
  }
}
