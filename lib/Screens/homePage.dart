
import 'package:exam/Screens/productPage.dart';
import 'package:exam/main.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => mainPageState();
}

class mainPageState extends State<mainPage> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff0366fc),
        leading: GestureDetector(
          onTap: () {
            Route route = MaterialPageRoute(builder: (context) => const homePage());
            Navigator.of(context).pop(route);
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "All Fornitures",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      //drawer: NavBar(),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff0366fc),
      //   leading:const Icon( Icons.arrow_back_ios,),
      //   centerTitle: true,
      //   actions: [
      //     GestureDetector(
      //       onTap: () {
      //         Route route = MaterialPageRoute(builder: (context) => homePage());
      //         Navigator.of(context).push(route);
      //       },
      // ),
      //   ],
      //   elevation: 0,
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff0366fc),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                  child:Text(
                    "New Product ",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: DefaultTabController(
                    length:4,
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      indicator: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Colors.black, Colors.blue]),
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white),
                      tabs: const [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("ALL"),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("TABLES"),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("LAMPS"),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("CHAIRS"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      rowScroll(
                          pname: "Morden Chair",
                          price: "4999",
                          path: "assets/images/chair1.png",
                          des:
                              "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                      rowScroll(
                          pname: "Gaming Chair",
                          price: "8999",
                          path: "assets/images/gaming.png",
                          des:
                              "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                      rowScroll(
                          pname: "Wood Table",
                          price: "7999",
                          path: "assets/images/table.png",
                          des:
                              "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                      rowScroll(
                          pname: "Glass Table",
                          price: "3999",
                          path: "assets/images/table1.png",
                          des:
                              "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                      rowScroll(
                          pname: "Morden Lamp",
                          price: "1999",
                          path: "assets/images/lamp1.png",
                          des:
                              "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                      rowScroll(
                          pname: "Night Lamp",
                          price: "2999",
                          path: "assets/images/lamp2.png",
                          des:
                              "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                      rowScroll(
                          pname: "Blue Chair",
                          price: "9999",
                          path: "assets/images/chair4.png",
                          des:
                              "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    "All Product",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    populerRow(
                        pic: "assets/images/gaming.png",
                        pdname: "Gaming Chair",
                        pPrice: "8999",
                        des:
                            "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                    populerRow(
                        pic: "assets/images/chair1.png",
                        pdname: "Morden Chair",
                        pPrice: "4999",
                        des:
                            "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                    populerRow(
                        pic: "assets/images/table.png",
                        pdname: "Wood Table",
                        pPrice: "7999",
                        des:
                            "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                    populerRow(
                        pic: "assets/images/table1.png",
                        pdname: "Glass Table",
                        pPrice: "3999",
                        des:
                            "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                    populerRow(
                        pic: "assets/images/lamp1.png",
                        pdname: "Morden Lamp",
                        pPrice: "1999",
                        des:
                            "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                    populerRow(
                        pic: "assets/images/lamp2.png",
                        pdname: "Night Lamp",
                        pPrice: "2999",
                        des:
                            "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                    populerRow(
                        pic: "assets/images/chair4.png",
                        pdname: "Blue Chiar",
                        pPrice: "9999",
                        des:
                            "A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest. They may be made of wood, metal, or synthetic materials, and may be padded or upholstered in various colors and fabrics."),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget rowScroll(
      {required String pname,
      required String price,
      required String path,
      required String des}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => productPage(
              image: path,
              name: pname,
              prise: price,
              des: des,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          width: 180,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 5,
                spreadRadius: 1),
            BoxShadow(
                color: Colors.black,
                offset: Offset(-4, -4),
                blurRadius: 5,
                spreadRadius: 1),
          ], borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 170,
                width: 180,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                ),
                child: Image.asset(path),
              ),
              Container(
                height: 80,
                width: 180,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pname,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "₹ $price",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
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

  Widget populerRow(
      {required String pic,
      required String pdname,
      required String pPrice,
      required String des}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => productPage(
              image: pic,
              name: pdname,
              prise: pPrice,
              des: des,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(4, 4),
                  blurRadius: 4,
                  spreadRadius: 1),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4, -4),
                  blurRadius: 5,
                  spreadRadius: 1),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
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
                  child: Image.asset(pic),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pdname,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "₹ $pPrice",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
                    Icons.arrow_drop_down_circle_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
