import 'package:flutter/material.dart';



class Mapwidget extends StatefulWidget {
  const Mapwidget({Key? key}) : super(key: key);

  @override
  State<Mapwidget> createState() => _BuinnessPageState();
}

class _BuinnessPageState extends State<Mapwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
         
        ],
      ),
    );
  }

  /* Widget geneList() {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: List.generate(3, (index) {
            return Container(
              width: 300,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60), color: orange),
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
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: black, width: 4),
                              image: DecorationImage(
                                  image: AssetImage(imgList[index]['img']),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "His & Her Beaty",
                          style: TextStyle(color: black),
                        ),
                        Text(
                          "-The  Barber237-",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
            );
          }),
        ));
  }*/
}
