import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final Color icon_color;
  final IconData icon;
  final Function onpress;

  const CircleIcon({Key key, this.icon_color, this.icon, this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0, right: 8),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[800]
          ),
          child: Center(
            child: Icon(icon, color: icon_color, size: 16,),
          ),

        ),
      ),
    );
  }
}
