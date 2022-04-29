import 'package:flutter/material.dart';

import 'package:market_flutter/themes/colors.dart';

class CentreInteret extends StatefulWidget {
  const CentreInteret({Key? key}) : super(key: key);

  @override
  State<CentreInteret> createState() => _CentreInteretState();
}

class _CentreInteretState extends State<CentreInteret> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mes Centres",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "d Interets",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 6, top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Icon(Icons.message_outlined),

                          Flexible(
                            child: TextField(
                              cursorColor: orange,
                              style: TextStyle(color: orange),
                              decoration: InputDecoration(
                                hoverColor: Colors.black,
                                hintText: "Type here...",
                                fillColor: orange,
                                isCollapsed: true,
                                focusColor: orange,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: white,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 300,
                        height: 3,
                        decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    const Text("Ou alors faites votre choix dans",
                        style: TextStyle(
                          color: white,
                         fontFamily: 'AkayaTelivigala',
                          fontSize: 22,
                        )),
                    const Text(
                      "notre liste ci-desous.(3 minimun)",
                      style: TextStyle(
                        color: white,
                        fontFamily: 'AkayaTelivigala',
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 0;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: activeTab == 0 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Text(
                        "Hotel",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 1;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: activeTab == 1 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Education",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 2;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: activeTab == 2 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Restaurant",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 3;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: activeTab == 3 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Sport",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 4;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: activeTab == 4 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Tic",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 5;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                        color: activeTab == 5 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Divertissement",
                          style: TextStyle(
                              color: black,
                              fontFamily: 'UbuntuMono-Regular',
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 6;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: activeTab == 6 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Supermarcher",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 7;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: activeTab == 7 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Beaute",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 8;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: activeTab == 8 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Coiffure",
                          style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 9;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: activeTab == 9 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Shopping",
                            style: TextStyle(
                              color: black,
                              fontFamily: 'UbuntuMono-Regular',
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 10;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: activeTab == 10 ? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Traiteur",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 11;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                      color: activeTab == 11? orange : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                        "Garage",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'UbuntuMono-Regular',
                            fontSize: 20),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/localisation");
                },
                child: Center(
                  child: Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      color: orange,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text(
                      "Continuer",
                      style: TextStyle(color: white, fontSize: 25),
                    )),
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
