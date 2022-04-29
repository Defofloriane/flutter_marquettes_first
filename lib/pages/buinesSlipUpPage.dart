import 'package:flutter/material.dart';
import 'package:market_flutter/data/img_list.dart';
import 'package:market_flutter/themes/colors.dart';
import 'package:market_flutter/widget/mapwidget.dart';
import 'package:market_flutter/widget/tabwidget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ClipUpPage extends StatefulWidget {
  const ClipUpPage({Key? key}) : super(key: key);

  @override
  State<ClipUpPage> createState() => _ClipUpPageState();
}

class _ClipUpPageState extends State<ClipUpPage> {
  final panelController = PanelController();
  final double tabBarHeight = 2;
  bool iscolum = false;
  @override
 Widget build(BuildContext context) => Scaffold(
          /* body: SlidingUpPanel(
         body: Mapwidget(),
         panelBuilder: (controller) => singnUpPage(
           controller:controller,
         ),
       ),*/
    body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/gps1.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
              singnUpPage(),
              buildTabBar(onClicked: (){}),
             SizedBox(height: 450,),
            
         /*   SlidingUpPanel(
         controller: panelController,
         
          panelBuilder: (scrollController) => buildSlidingPanel(
            scrollController: scrollController,
            panelController: panelController,
        
         body: buildTabBar(onClicked: (){}),
        ),*/
         ],
            ),
          )
  
  ]
    ),
 );
      
    Widget buildSlidingPanel({
       required PanelController panelController,
      required ScrollController scrollController,
    }) =>
        DefaultTabController(
          length: 1,
          child: Scaffold(
         // appBar: buildTabBar(onClicked: onClicked),
            body:buildTabBar(onClicked: (){})
          ),
        );
 Widget buildTabBar({
    required VoidCallback onClicked,
  }) =>
      PreferredSize(
        preferredSize: Size.fromHeight(tabBarHeight - 2),
        child: GestureDetector(
          onTap: onClicked,
          child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: double.infinity,
                  height: iscolum ? 1200 : 900,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0, 150, 100],
                        colors: [black, orange, black]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "04 Buinesses trouvé",
                                  style: TextStyle(color: white),
                                ),
                                Text(
                                  "autour de vous",
                                  style: TextStyle(color: white),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  iscolum = !iscolum;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: black,
                                ),
                                child: Center(
                                    child: Icon(Icons.more_horiz_sharp,
                                        color: white, size: 35)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: List.generate(imgList.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Container(
                                width: 300,
                                height: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: orange),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 130,
                                            height: 140,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                border: Border.all(
                                                    color: black, width: 4),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        imgList[index]['img']),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "His & Her Beaty",
                                            style: TextStyle(color: black),
                                          ),
                                          Text(
                                            "-The  Barber237-",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: white,
                                                      ),
                                                      Text("4.0"),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.messenger,
                                                        color: white,
                                                      ),
                                                      Text("45 reviews"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 15),
                                              Icon(
                                                Icons.favorite,
                                                color: white,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
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
      );
    Widget singnUpPage() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: orange,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "N W A R",
                      style: TextStyle(fontSize: 25, color: white),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Center(child: Icon(Icons.send)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Approximité")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.store),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Services"),
                          ],
                        ),
                        Icon(Icons.more_vert),
                      ],
                    )
                  ],
                ),
              ),
            ),
           
         //
          ],
        ),
      );
    }
  }

