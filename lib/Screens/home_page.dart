import 'package:flutter/material.dart';
import 'package:flutter_application_06/Screens/detail_screen.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: SweepGradient(
            center: Alignment(10, 20),
            colors: [
              Color.fromARGB(255, 59, 64, 72),
              Color.fromARGB(255, 22, 24, 26),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xff212428),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white24,
                          blurRadius: 15,
                          offset: Offset(1, 0)),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Color(0xff7F8489),
                    ),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    const Center(
                      child: Text(
                        "Tesla",
                        style: TextStyle(
                          color: Color(0xFF7E8389),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Cybertruck",
                        style: TextStyle(
                          color: Color(0xFFFCFCFC),
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "297",
                            style: TextStyle(
                              color: Color(0xFFFCFCFC),
                              fontSize: 90,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "km",
                            style: TextStyle(
                              color: Color(0xFFFCFCFC),
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: SizedBox(
                            child: Image.asset(
                              "assets/images/cybertruck.png",
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 350,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 18,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "A/C is turned on",
                          style: TextStyle(
                            color: Color(0xFF7F8489),
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onLongPress: () {
                            Navigator.of(context)
                                .pushNamed(DetailScreen.routeName);
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
                                  color: const Color(0xff11A8FD),
                                ),
                                borderRadius: BorderRadius.circular(60),
                                gradient: const RadialGradient(
                                  focal: Alignment(-1, -1),
                                  radius: 1.1,
                                  colors: [
                                    Color(
                                      0xff005EA3,
                                    ),
                                    Color(0xff11A8FD)
                                  ],
                                )),
                            child: const Icon(
                              Icons.lock_outline_sharp,
                              color: Color(0xFFE6E6E6),
                              size: 35,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Long press to open the car",
                          style: TextStyle(
                            color: Color(0xFFE6E6E6),
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
