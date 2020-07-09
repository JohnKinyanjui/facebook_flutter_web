import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final Color icon_color;
  final Color tab_color;
  final Function onpress;

  const NavItem({Key key, this.icon, this.onpress, this.icon_color, this.tab_color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 70,
        width: 100,
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Icon(icon, color: icon_color,size: 30,),
            Expanded(child: SizedBox()),
            Container(
              height: 4,
              width: 100,
              color: tab_color,
            )
          ],
        ),
      ),
    );
  }
}
