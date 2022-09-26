import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodhub/Component/data.dart';
import 'package:foodhub/Component/ink_well_custom.dart';
import 'package:foodhub/Component/rest_cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: InkWellCustom(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Image.asset(
                        "assets/images/menu.png",
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Deliver To",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        const Text(
                          "4102 Pretty view Lan",
                          style: TextStyle(color: Color(0xFFFE724C)),
                        ),
                      ],
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/profile.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, right: 60),
                  child: SizedBox(
                    width: 272,
                    height: 60,
                    child: Text(
                      "What would you like to order",
                      style: TextStyle(
                          color: Color(
                            0xFF323643,
                          ),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        width: 256,
                        height: 51,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 7,
                                spreadRadius: 1,
                              )
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                FontAwesomeIcons.search,
                                size: 15,
                                color: const Color(0xFF808093).withOpacity(0.5),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 20),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintStyle:
                                  const TextStyle(color: Color(0xFF808093)),
                              hintText: "Search"),
                        ),
                      ),
                    ),
                    Container(
                      height: 51,
                      width: 51,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Image.asset(
                        "assets/images/filter.png",
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 100,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Column(
                                children: [
                                  Image.asset("assets/images/dish1.png",
                                      width: 52),
                                  const Text("dish"),
                                ],
                              ),
                            ),
                        separatorBuilder: (_, index) => const SizedBox(
                              width: 15,
                            ),
                        itemCount: 5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Featured Restaurants",
                        style: TextStyle(
                            color: Color(
                              0xFF323643,
                            ),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Text(
                            "View All",
                            style: TextStyle(color: Color(0xFFFE724C)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFFE724C),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 4.0),
                          child: FoodyBiteCard(
                            imagePath: imagePaths[index],
                            status: status[index],
                            cardTitle: restaurantNames[index],
                            rating: ratings[index],
                            category: category[index],
                            distance: distance[index],
                            address: addresses[index],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
