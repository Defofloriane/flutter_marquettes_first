import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:market_flutter/themes/colors.dart';
import 'package:market_flutter/widget/cliptCuveto.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }


  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
         SingleChildScrollView(
          child: ClipPath(
            clipper: Backgrouncliper(),
            child: Column(
              children: 
                [
                  Container(
                 width: double.infinity,
                     height: 600.0,
                  decoration:BoxDecoration(
                gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                           stops: [0,150,100],
                          colors: [orange,black, black]),
                        ),
                child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: orange,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/inscription_page");
                             
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
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("M W A R"),
                          SizedBox(height: 4,),
                          Text("Connexion")
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          Container(
                            width: 310,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Icon(LineIcons.personEnteringBooth,color: black.withOpacity(0.5),),
                                SizedBox(width: 15,),
                                 Flexible(
                                          child: TextField(
                                            cursorColor: Colors.black.withOpacity(0.5),
                                            decoration: InputDecoration(
                                              hintText: "Nom D utilisateur",
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            width: 310,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Icon(LineIcons.lock,color: black.withOpacity(0.5),),
                                SizedBox(width: 15,),
                                 Flexible(
                                          child: TextField(
                                            cursorColor: Colors.black.withOpacity(0.5),
                                            decoration: InputDecoration(
                                              hintText: "Mot de passe",
                                            ),
                                          ),
                                        )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text("Mot de passe oublier?",style: TextStyle(fontSize: 16,color: white,decoration:TextDecoration.underline),)]
                            ),
                          SizedBox(height: 30,),
                           Container(
                            width: 310,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: orange,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              
                                SizedBox(width: 15,),
                                Text("Se Connecter",style: TextStyle(fontSize: 20,color: white),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.caretSquareUp,color: orange.withOpacity(0.5),),
                              SizedBox(width: 7,),
                              Text("Rester connecter!",style: TextStyle(fontSize: 16,color: white,decoration:TextDecoration.underline),)]
                            ),
                       
                           
                        ],
                      ),
                    ],
                  ),
                ),
                
                ),
                ),
                
            /*  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                             height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: black.withOpacity(0.1)),
                                color: Colors.red,
                              ),
                               child: Center(
                              child: SvgPicture.asset("assets/images/google_icon.svg",width: 20,),
                            ),
                              ), 
                          ],
              ),*/
              ],
            ),
          ),
          
        ),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Divider(
                                thickness: 0.8,
                              ),
                            ),
                            SizedBox(width: 2,),
                            Text("Ou connecter via",style: TextStyle(color: Colors.grey.withOpacity(0.5),fontSize: 18),),
                             SizedBox(width: 2,),
                                Flexible(
                              child: Divider(
                                thickness: 0.8,
                              ),
                            ),
                          ],
                        ),
         SizedBox(height:20),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height:50,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),
                color: Colors.red,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                            Center(
                        child: SvgPicture.asset("asset/images/google_icon.svg",width: 30,color: white,),
                            ),
                            SizedBox(width: 10,),
                            Text("Google",style: TextStyle(fontSize: 16,color: white),)
                ],
                ),
              ),
              SizedBox(width: 20,),
              
                Container(
                width: 150,
                height:50,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),
                color: Colors.blue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                            Center(
                        child: SvgPicture.asset("asset/images/google_icon.svg",width: 30,color: white,),
                            ),
                            SizedBox(width: 10,),
                            Text("Linkedln",style: TextStyle(fontSize: 16,color: white),)
                ],
                ),
              ),
            ],
         ),  
        SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("je n est pas de compte.",style: TextStyle(fontSize: 16,color: black),
            ),
            SizedBox(width: 8,),
            Text("Creer un compte",style: TextStyle(fontSize: 16,color: orange,decoration: TextDecoration.underline),
            ),
          ],
        ),
        SizedBox(height:20),
        ],
          ),
    );
  }
}
