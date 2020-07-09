import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blue[700],
            shape: BoxShape.circle,

          ),
          child: Center(
            child: Icon(FontAwesomeIcons.facebookF, color: Colors.white,),
          ),
        ),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: 45,
            width: 240,
            decoration: BoxDecoration(
                color: text_field_Color,
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            child: Center(
              child:   TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(FeatherIcons.search, color: icon_color,),
                    border: InputBorder.none,
                    hintText: "Search Facebook",
                    hintStyle: TextStyle(fontSize: 15, color: icon_color)
                ),

              ),
            ),
          ),
        ),
      ],
    );
  }
}
