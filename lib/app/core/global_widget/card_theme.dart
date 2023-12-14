import 'package:flutter/cupertino.dart';

class Wave extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    var h = size.height;
    var w = size.width;

    path.moveTo(0,h*0.6813953);
    path.lineTo(0,h);
    path.lineTo(w,h);
    path.lineTo(w,h*0.7151163);
    path.quadraticBezierTo(w*0.7652866,h*0.5014535,w*0.4598726,h*0.6709302);
    path.quadraticBezierTo(w*0.1996815,h*0.8305233,w*0.0025478,h*0.6813953);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Sleek extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    var h = size.height;
    var w = size.width;
    double roundnessFactor=0;

    path.lineTo(0,h*0.6); /// 1  /// top left
    path.quadraticBezierTo(
        w*0.5, h*0.9, /// 3  /// middle
        w, h*0.6 /// 5
    );
    path.lineTo(w, h); /// 4  /// bottom right

    path.lineTo(0, size.height); /// 2 bottom

    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
class Modern extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    var h = size.height;
    var w = size.width;

    path.moveTo(0,size.height*0.8); /// top left
    path.lineTo(0,size.height); /// bottom left
    path.lineTo(size.width,size.height); /// bottom right
    path.lineTo(size.width,size.height*0.6); /// top right
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
