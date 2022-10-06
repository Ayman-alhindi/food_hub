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

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin {

  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _menuScaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0)).animate(_controller);
  }
  final Color backgroundColor = const Color(0xFF4A4A58);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Stack(
      children: [
        AnimatedPositioned(
          duration: duration,
          top: 0,
          bottom: 0,
          left: isCollapsed ? 0 : 0.6 * screenWidth,
          right: isCollapsed ? 0 : -0.2 * screenWidth,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Material(
              animationDuration: duration,
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              elevation: 8,
              child: Scaffold(
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
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if (isCollapsed) {
                                      _controller.forward();
                                    } else {
                                      _controller.reverse();
                                    }

                                    isCollapsed = !isCollapsed;
                                  });
                                },
                                child: Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Image.asset(
                                    "assets/images/menu.png",
                                  ),
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
                              Expanded(
                                child: Padding(
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
                                const Expanded(
                                  child: Text(
                                    "Featured Restaurants",
                                    style: TextStyle(
                                        color: Color(
                                          0xFF323643,
                                        ),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
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
              ),
            ),
          ),
        ),
        menu(context)
      ],
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/profile.png"                                        ),
                      ),
                    ),
                    height: 90,
                    width: 90,
                  ),
                  const SizedBox(height: 10),
                  const Text("Farion Wick", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text("farionwick@gmail.com", style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 50),
                  Row(
                    children: const [
                      Icon(
                        Icons.task,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text("My Orders", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text("My Profile", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text("Delivery Address", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(
                        Icons.wallet,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text("Payment Methods", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(
                        Icons.mail,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text("Contact Us", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text("Settings", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Icon(
                        Icons.info,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text("Helps & FAQs", style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 43,
                    width: 117,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFFE724C)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.powerOff,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text("Log Out", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
