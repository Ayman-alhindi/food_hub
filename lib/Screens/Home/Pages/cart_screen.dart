import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:foodhub/Component/order_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final _listTextTabToggle = ["Upcoming", "History"];
  var _tabTextIndexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          Center(
          child: FlutterToggleTab(
          width: 80,
            borderRadius: 30,
            isShadowEnable: true,
            unSelectedBackgroundColors: const [Colors.white],
            height: 50,
            selectedIndex: _tabTextIndexSelected,
            selectedBackgroundColors: const [Color(0xFFFE724C)],
            selectedTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700),
            unSelectedTextStyle: const TextStyle(
                color: Color(0xFFFE724C),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            labels: _listTextTabToggle,
            selectedLabelIndex: (index) {
              setState(() {
                _tabTextIndexSelected = index;
              });
            },
            isScroll: false,
          ),
      ),
      const SizedBox(height: 20),
      Center(
          child: Column(
            children: <Widget>[
              Scrollbar(
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const OrderCard();
                    }),
              )
            ],
          ),
      )
      ],
    ),
        ),)
    ,
    );
  }
}
