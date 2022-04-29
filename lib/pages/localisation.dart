import 'package:flutter/material.dart';
import 'package:market_flutter/themes/colors.dart';

class LocalisationPage extends StatefulWidget {
  const LocalisationPage({Key? key}) : super(key: key);

  @override
  State<LocalisationPage> createState() => _LocalisationPageState();
}

class _LocalisationPageState extends State<LocalisationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.withOpacity(0.2),
      
      body: getLocalisation(),
    );
  }

  Widget getLocalisation() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 12, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.topCenter,
                            stops: [
                              0,
                              100
                            ],
                            colors: [
                              Colors.white.withOpacity(0.3),
                              Colors.grey
                            ]),
                      ),
                      child: Center(
                          child: Icon(Icons.keyboard_arrow_left,
                              color: black, size: 35)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                        Navigator.pushNamed(context, "/boiteDialogue");
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.topCenter,
                            stops: [0, 100],
                            colors: [Colors.white.withOpacity(0.3), Colors.grey]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Passer",
                                style: TextStyle(color: black, fontSize: 18),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: black,
                                size: 35,
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Votre",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  Text(
                    "Localisation",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ceci nous permettra de vous ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: 'AkayaTelivigala'),
                        
                  ),
                  Text(
                    "montrer des activites tout ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: 'AkayaTelivigala'),
                  ),
                  Text(
                    "pres de vous ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                       fontFamily: 'AkayaTelivigala'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            
            //do image
             Stack(
                children: [
             Container(
               height: 310,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/images/location.JPG"),
                fit: BoxFit.contain,
               
              ),
              
            ),
          ),
         ],
        ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/boiteDialogue");
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
                    "Autoriser Maintenant",
                    style: TextStyle(color: white, fontSize: 25),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
