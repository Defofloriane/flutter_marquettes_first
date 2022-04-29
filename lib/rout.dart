
import 'package:flutter/material.dart';
import 'package:market_flutter/pages/boiteDialogue.dart';
import 'package:market_flutter/pages/buinnes_page.dart';
import 'package:market_flutter/pages/centre_interet.dart';
import 'package:market_flutter/pages/connect_page.dart';
import 'package:market_flutter/pages/localisation.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = <String, dynamic>{};

  switch (setting.name) {
    case '/connect_page':
      return MaterialPageRoute(builder: (context) => ConnectPage());
    case '/localisation':
      return MaterialPageRoute(builder: (context) => LocalisationPage());
    case '/centre_interet':
      return MaterialPageRoute(builder: (context) => const CentreInteret());  
    case '/boiteDialogue':
      return MaterialPageRoute(builder: (context) => const BoiteDialoguePage());  
    case '/buinnes_page':
      return MaterialPageRoute(builder: (context) => const BuinnessPage());  
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}