import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    child: Scrollbar(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/pizza.png"                                        ),
                                        ),
                                      ),
                                      height: 65,
                                      width: 65,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          "Red n hot pizza",
                                          style:
                                              TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Spicy chicken, beef",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                        Text(
                                          "\$15.30",
                                          style: TextStyle(color: Color(0xFFFE724C)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(Icons.close,
                                            color: Color(0xFFFE724C), size: 20),
                                        Row(
                                          children: [
                                            Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(100),
                                                    border: Border.all(
                                                        color:
                                                            const Color(0xFFFE724C))),
                                                child: const Center(
                                                  child: Icon(Icons.remove,
                                                      color: Color(0xFFFE724C),
                                                      size: 20),
                                                )),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "1",
                                              style:
                                              TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(width: 10),
                                            Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    color: const Color(0xFFFE724C),
                                                    borderRadius:
                                                    BorderRadius.circular(100),),
                                                child: const Center(
                                                  child: Icon(Icons.add,
                                                      color: Colors.white,
                                                      size: 20),
                                                )),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 61,
              width: 331,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(50),
                  border: Border.all(
                      color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Promo Code',
                        ),
                      ),
                    ),
                    Container(
                      height: 44.13,
                      width: 96.52,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFE724C),
                          borderRadius:
                          BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text("Apply",style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 331,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Subtotal",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: const [
                            Text("\$27.30",style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("USD",style: TextStyle(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(height: 1,color: Colors.grey,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Tax and Fees",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: const [
                            Text("\$5.30",style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("USD",style: TextStyle(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(height: 1,color: Colors.grey,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Delivery",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: const [
                            Text("\$1.0",style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("USD",style: TextStyle(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(height: 1,color: Colors.grey,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text("Total",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("(2 item)",style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: const [
                            Text("\$33.60",style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("USD",style: TextStyle(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 57,
              width: 248,
              decoration: BoxDecoration(
                  color: const Color(0xFFFE724C),
                  borderRadius:
                  BorderRadius.circular(50),
              ),
              child: const Center(
                child: Text("Checkout",style: TextStyle(
                    color: Colors.white
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
