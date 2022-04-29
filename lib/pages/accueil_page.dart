import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:market_flutter/data/wel_col.dart';
import 'package:market_flutter/themes/colors.dart';
import 'package:market_flutter/widget/acti_colo.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({Key? key}) : super(key: key);

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(180),
      ),*/
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: double.infinity,
             
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0,100],
                    colors: [orange, black]),
                  ),
            
                child:Padding(
                  padding: const EdgeInsets.all(17),
                  child: Column(
                    children: [
                          Container(
                          width:size.width,
                           height: size.width,
                          decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(weekly[0]['img'])),
                      ),
                    ),
                  
                      Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                         mainAxisAlignment: MainAxisAlignment.end, 
                          children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                               
                                children: [
                                    Text("C est votre ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: black),
                                ),
                                SizedBox(width: 1,),
                                Text("Buissennes",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: black,decoration: TextDecoration.underline),
                                ),
                                ],
                              ),
                                
                               Text("comme vous le vouley!",style: TextStyle(fontSize: 14,fontFamily: 'RobotoMono'),
                              ),
                              
                              ],
                            ),
               Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                 gradient: LinearGradient(colors: [orange,homecolor]),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: LineChart(activityData()),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                
                        children: [
                          Text("Bienvenue a",style: TextStyle(fontSize:16,color: black ,),
                          ),
                          Text("MWAR"),
                        ],
                      ),
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Qui fait quoi a cote de vous?",style: TextStyle(fontSize: 16,fontFamily: 'DayRoman', color: black,fontWeight: FontWeight.bold),),
                          InkWell(
                            onTap: () {
                             Navigator.pushNamed(context, "/connect_page");
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: white,
                              ),
                              child: Icon(Icons.keyboard_arrow_right),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              
              ), 
                          
                          ],
                      
                  ),
                ),
            ),
          ),
               
        
        ],
      ),
    );
  }

  Widget getAppBar() {
    return AppBar(
       elevation: 3.4,
      backgroundColor: orange,
    );
  }
}
