import 'package:flutter/material.dart';
import 'package:market_flutter/themes/colors.dart';

class BoiteDialoguePage extends StatefulWidget {
  const BoiteDialoguePage({Key? key}) : super(key: key);

  @override
  State<BoiteDialoguePage> createState() => _BoiteDialoguePageState();
}

class _BoiteDialoguePageState extends State<BoiteDialoguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: getBodx(),
    );
  }

  Widget getBodx() {
    return Column(
      children: [
        Container(
          height:150,
          width: double.infinity,
          color: orange,
          child: Padding(
            padding: const EdgeInsets.only(top: 50,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("N W A R",style: TextStyle(fontSize: 25,color: white),
                ),
                SizedBox(height: 22,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      
                      children: [
                        Center(child: Icon(Icons.send)),
                             SizedBox(height: 5,),
                        Text("Approximité")
                      ],
                    ),
                      Column(
                      children: [
                        Icon(Icons.store),
                        SizedBox(height: 5,),
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
        
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Container(
            height: 250,
            width:270,
            color:Colors.black,
            child:Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text( 
                      "Acceder a votre",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                     Text( 
                      "localisation?",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                                       ),
                    SizedBox(height: 18,),
                     Text( 
                      "L apllication nwar aimerait",
                       style: TextStyle(
                          color: white,
                         fontFamily: 'AkayaTelivigala',
                          fontSize: 21,
                        )),
                     Text( 
                      "avoir acces a votre",
                       style: TextStyle(
                          color: white,
                         fontFamily: 'AkayaTelivigala',
                          fontSize: 21,
                        )),
                     Text( 
                      "localisation pour permettre",
                      style: TextStyle(
                          color: white,
                         fontFamily: 'AkayaTelivigala',
                          fontSize: 21,
                        )),
                     Text( 
                      "cette fonctionnalité.",
                      style: TextStyle(
                          color: white,
                         fontFamily: 'AkayaTelivigala',
                          fontSize: 21,
                        )),
                    SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        InkWell(
                          onTap: () {
                             Navigator.pushNamed(context, "/buinnes_page");
                          },
                          child: Text( 
                                     "Accepter",
                                              style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                                            ),
                        ),
                    SizedBox(width: 18,),
                      Text( 
                      "Refuser",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    ],
                  )
                ],
              ),
            ),

          ),
        )
      ],
    );
  }
}
