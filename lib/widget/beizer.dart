import 'package:flutter/material.dart';
import 'package:market_flutter/themes/colors.dart';

class CliptPagee extends StatefulWidget {
  const CliptPagee({Key? key}) : super(key: key);

  @override
  State<CliptPagee> createState() => _CliptPageeState();
}

class _CliptPageeState extends State<CliptPagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: Backcliper(),
        child: Container(
          height: 400,

          color: orange,
          // decoration: BoxDecoration(border:Border.all(color: orange)),
        ),
      ),
    );
  }
}

class Backcliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // paint.color = Color(0xffffffff).withOpacity(0);

    //  canvas.drawPath(path, paint);
    /* path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);
    path.lineTo(size.width, 0);  //courbe bierzer un seul angle*/
    path.lineTo(0, size.height / 2);
    path.cubicTo(10, 80, 95, 10 ,180 ,80);

    path.lineTo(size.width/4,0);
    path.cubicTo(10, 80, 95, 10 ,180 ,80);
   
    path.lineTo(size.height/2, 0);
      /* path.lineTo(0, size.height / 1.2);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);
    path.lineTo(size.width, 0);  //courbe bierzer un seul angle
    
    path.cubicTo(size.width / 4, 3 * (size.height / 2), 3 * (size.width / 4),
        (size.height / 2), size.width, size.height * 0.9);
    path.lineTo(size.width, 0);*/
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
