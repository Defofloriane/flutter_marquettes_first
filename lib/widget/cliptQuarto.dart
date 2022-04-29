import 'package:flutter/material.dart';
import 'package:market_flutter/themes/colors.dart';

class QuartClipt extends StatefulWidget {
  const QuartClipt({ Key? key }) : super(key: key);

  @override
  State<QuartClipt> createState() => _QuartCliptState();
}

class _QuartCliptState extends State<QuartClipt> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: ClipPath(
        clipper: Mycliper(),
        child: Container(
          height: 300.0,

          color: orange,
          // decoration: BoxDecoration(border:Border.all(color: orange)),
        ),
      ),
    );
  }
}

class Mycliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // paint.color = Color(0xffffffff).withOpacity(0);

    //  canvas.drawPath(path, paint);
   path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);
    path.lineTo(size.width, 0);  //courbe bierzer un seul angle
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}


