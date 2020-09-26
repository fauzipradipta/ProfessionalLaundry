import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key, 
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;    // This size provide us total width and height of our screen
    return Container(
      height: size.height,
      width:  double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("professionallaundry\assets\images2\main_top.svg", width: size.width * 0.3, 
            ),
          ), 
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("professionallaundry\assets\images2\main_bottom.svg", width: size.width* 0.2),
          ),
          child,
        ],
      ),
    );
  }
}
