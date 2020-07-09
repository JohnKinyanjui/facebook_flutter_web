import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'circle_icon.dart';

class IconContainer extends StatelessWidget {

  final IconData icon;
  final String title;
  final String sub;

  const IconContainer({Key key, this.icon, this.title, this.sub}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          CircleIcon(
            icon: icon,
            icon_color: icon_color,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300)),
              SizedBox(height: 3,),
              Text(sub,style: TextStyle(fontSize: 10, color: icon_color, fontWeight: FontWeight.w300))


            ],
          )
        ],
      ),
    );
  }
}
