import 'package:flutter/material.dart';
import 'package:market_flutter/themes/colors.dart';

class CuveClipt extends StatefulWidget {
  const CuveClipt({ Key? key }) : super(key: key);

  @override
  State<CuveClipt> createState() => _CuveCliptState();
}

class _CuveCliptState extends State<CuveClipt> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: ClipPath(
        clipper: Backgrouncliper(),
           ),
    );
  }
}

class Backgrouncliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // paint.color = Color(0xffffffff).withOpacity(0);

    //  canvas.drawPath(path, paint);
    /* path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);
    path.lineTo(size.width, 0);  //courbe bierzer un seul angle*/
     path.lineTo(0, size.height / 1.2);
    path.quadraticBezierTo(size.width/1.2, size.height, size.width, size.height/5);
    path.lineTo(size.width, 15);  //courbe bierzer un seul angle
      path.lineTo(size.width/5, 0);
    path.cubicTo(size.width / 150, 3 * (size.height / 2), 3 * (size.width / 4),
        (size.height / 2), size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

