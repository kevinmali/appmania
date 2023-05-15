import 'package:exam/Screens/cartPage.dart';
import 'package:exam/Screens/homePage.dart';
import 'package:flutter/material.dart';

class productPage extends StatefulWidget {
  String? image;
  String? name;
  String? prise;
  String? des;

  productPage({
    required String this.image,
    required String this.name,
    required String this.prise,
    required String this.des,
  });

  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
  Color backGround = const Color(0xffdad3c8);
  Color appBar = const Color(0xffdad3c8);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Route route =
                MaterialPageRoute(builder: (context) => const mainPage());
            Navigator.of(context).pop(route);
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
        backgroundColor: appBar,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffdad3c8),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: backGround,
                ),
                child: Image.asset("${widget.image}"),
              ),
              Container(
                height: 325,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  // borderRadius: BorderRadius.all(1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 8,right: 8,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.name}",
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "₹ ${widget.prise}",
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${widget.des}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Colors",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                backGround = const Color(0xffdad3c8);
                                appBar = const Color(0xffdad3c8);
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Color(0xffdad3c8),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                backGround = Colors.deepPurple;
                                appBar = Colors.deepPurple;
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                backGround = Colors.blue;
                                appBar = Colors.blue;
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                backGround = Colors.pink;
                                appBar = Colors.pink;
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.pink,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Route route = MaterialPageRoute(
                            builder: (context) => cartPage(
                                image: "${widget.image}",
                                name: "${widget.name}",
                                Price: "${widget.prise}"),
                          );
                          Navigator.of(context).push(route);
                          // Provider.of<CartModel>(context, listen: false)
                          //     .addItemToCart(index);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

cartpage({required String image, required String name, required String price}) {
}
