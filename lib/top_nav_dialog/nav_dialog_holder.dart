import 'package:facebook_flutter_web/constants.dart';
import 'package:flutter/material.dart';

class NavDialogHolder extends StatelessWidget {
  final Widget child;
  final double bottom;

  const NavDialogHolder({Key key, this.child, this.bottom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return  Positioned(
      top: 70,
      left: width-370,
      bottom: bottom,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 350,
          decoration: BoxDecoration(
              color: background_color,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.grey[800],width: 0.5)
          ),
          child: child,
        ),
      ),
    );
  }
}
