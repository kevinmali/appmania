import 'package:exam/Screens/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    ),
  );
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();

}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff0366fc),
      //   elevation: 0,
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff0366fc)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " GOOD ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 5),
              ),
              const Text(
                " STYLE ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 5),
              ),
              const Text(
                " FURNITURES...",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 5),
              ),
              Container(
                alignment: Alignment.center,
                height: 400,
                width: double.infinity,
                child: Image.asset("assets/images/table1.png"),
              ),
              Row(
                children: [
                  const Text(
                    " Simple Price home Forniture \n Design & ideas Simple.",
                      style:TextStyle(fontWeight: FontWeight.bold,)
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => const mainPage(),);
                      Navigator.of(context).push(route);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black,
                      ),
                      child: const Text(
                        "START",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
