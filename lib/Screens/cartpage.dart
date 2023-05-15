import 'package:flutter/material.dart';
import 'homePage.dart';


class cartPage extends StatefulWidget {
  String? image;
  String? name;
  String? Price;

  cartPage({super.key,
    required String this.image,
    required String this.name,
    required String this.Price,
  });
  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  int i = 1;
  int total = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
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
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff002366),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff002366),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 85,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset("${widget.image}"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${widget.name}",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                                color: Color(0xff002366),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "₹ ${widget.Price}",
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff002366),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.highlight_remove,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              //Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(color:Colors.white,fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    style: const TextStyle(
                        color:Colors.white , fontSize: 35, fontWeight: FontWeight.bold),
                    "₹ ${widget.Price}",
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Route route =
                  MaterialPageRoute(builder: (context) => const mainPage());
                  Navigator.of(context)
                      .pushAndRemoveUntil(route, (route) => false);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  child:  const Text(
                    "Continue To Shopping",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
