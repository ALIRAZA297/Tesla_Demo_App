import 'package:flutter/material.dart';
import 'package:flutter_application_06/Wedgits/buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Wedgits/ac_btn.dart';
import '../Wedgits/slide_bar.dart';
import '../Wedgits/slide_gauge.dart';

class DetailScreen extends StatefulWidget {
  static const routeName = "/detail_screen";
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isAcOn = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 29, 31, 34),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.black38),
                child: Image.asset(
                  "assets/images/app_logo.png",
                  fit: BoxFit.fill,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.message),
                title: Text(
                  'Messages',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
              ),
              const Divider(
                color: Colors.white54,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                leading: const Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
                title: const Text(
                  'Close Menu',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(9.0),
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
                        offset: Offset(1, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: const ImageIcon(
                        AssetImage("assets/images/Ticon.png"),
                        color: Color(0xff7F8489),
                      ),
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),
                ),
              );
            },
          ),
          scrolledUnderElevation: 0,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 29, 31, 34),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                    ]),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Color(0xff7F8489),
                  ),
                ),
              ),
            ),
          ],
          title: const Center(
            child: Column(
              children: [
                Text(
                  "Tesla",
                  style: TextStyle(
                    color: Color(0xff7F8489),
                    //fontSize: 10,
                  ),
                ),
                Text(
                  "Cybertruck",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          toolbarHeight: 58,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: SweepGradient(
                    center: Alignment(10, 20),
                    colors: [
                      Color.fromARGB(255, 59, 64, 72),
                      Color.fromARGB(255, 22, 24, 26),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset("assets/images/pic2.png"),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
                      child: Text(
                        "Status",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.battery_full,
                          color: Color(0xff7F8489),
                          size: 20,
                        ),
                        SizedBox(
                          child: Text(
                            "Battery",
                            style: TextStyle(
                              color: Color(0xff7F8489),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Color(0xff7F8489),
                          size: 20,
                        ),
                        SizedBox(
                          child: Text(
                            "Range",
                            style: TextStyle(
                              color: Color(0xff7F8489),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.thermostat_sharp,
                          color: Color(0xff7F8489),
                          size: 20,
                        ),
                        SizedBox(
                          child: Text(
                            "Temperture",
                            style: TextStyle(
                              color: Color(0xff7F8489),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "54%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 59,
                        ),
                        Text(
                          "297 km",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Text(
                          "27°C",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: SizedBox(
                        child: Text(
                          "Information",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Card(
                            elevation: 0,
                            color: const Color.fromARGB(255, 51, 52, 54),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 110,
                                    width: 140,
                                    child: SvgPicture.asset(
                                      "assets/images/Mask Group1.svg",
                                      fit: BoxFit.fill,
                                    )),
                                const Text(
                                  "Engine",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                const Text(
                                  "Sleeping mode",
                                  style: TextStyle(
                                    color: Color(0xFF7F8489),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            color: const Color.fromARGB(255, 51, 52, 54),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 110,
                                    width: 140,
                                    child: SvgPicture.asset(
                                      "assets/images/Mask Group2.svg",
                                      fit: BoxFit.fill,
                                    )),
                                const Text(
                                  "Climate",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                const Text(
                                  "A/C is ON",
                                  style: TextStyle(
                                    color: Color(0xFF7F8489),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            color: const Color.fromARGB(255, 51, 52, 54),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 110,
                                    width: 140,
                                    child: SvgPicture.asset(
                                      "assets/images/Mask Group2.svg",
                                      fit: BoxFit.fill,
                                    )),
                                const Text(
                                  "Tires",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                const Text(
                                  "Low preasure",
                                  style: TextStyle(
                                    color: Color(0xFF7F8489),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            "Navigation",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "History",
                            style: TextStyle(
                                color: Color(0xFF7F8489),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60)),
                        border: Border.all(
                          color: const Color(0xFF424750),
                          width: 2.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 5,
                                width: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            height: 90,
                            width: MediaQuery.of(context).size.height,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      isAcOn ? "A/C is ON" : "A/C is OFF",
                                      style: const TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      isAcOn ? "Currently 27°C \nWill change in 2min": "",
                                      style: const TextStyle(
                                          color: Color(0xFF7F8489),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 12,
                                  top: 10,
                                  child: ACButton(
                                    isACOn: isAcOn,
                                    onPressed: (newStatus) {
                                      setState(
                                        () {
                                          isAcOn = newStatus;
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height,
                            child: const GaugeWithThumb(),
                          ),
                          const Text(
                            "Fan speed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: GradientSliderWidget(),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 10,
                            ),
                            child: Text(
                              "Mode",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Auto",
                                style: TextStyle(
                                  color: Color(0xFF7F8489),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "Dry",
                                  style: TextStyle(
                                    color: Color(0xFF7F8489),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 27.0),
                                child: Text(
                                  "Cool",
                                  style: TextStyle(
                                    color: Color(0xFF7F8489),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Text(
                                "Program",
                                style: TextStyle(
                                  color: Color(0xFF7F8489),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                            width: MediaQuery.of(context).size.height,
                            child: createButtons(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
