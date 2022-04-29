import 'package:flutter/material.dart';
import 'package:market_flutter/themes/colors.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                      width: 100,
                      height: 30,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: orange,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/centre_interet");
                         
                        },
                        child: Row(
          
                              mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                                Text("Passer",style: TextStyle(fontSize: 14),),
                              Icon(Icons.keyboard_arrow_right,size: 16, color: black,)
                        ] ),
                      ),
                  ),
              ),
            ],
          ),
          Container(
            width: size.width,
            height: (size.width)*0.5,
            decoration: BoxDecoration(
              color: white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text("M W  A R"),
                SizedBox(height: 12,),
                Text("Inscription")
              ],
            ),
          ),
       
        ],
      ),
    );
  }
}
