
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_flutter/pages/centre_interet.dart';
import 'package:market_flutter/themes/colors.dart';

import 'rout.dart' as router;

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        backgroundColor:black,
      ),
      home:CentreInteret(),
      onGenerateRoute: router.generateRoute, 
    ));
  }
 