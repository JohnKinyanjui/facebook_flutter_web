import 'package:facebook_flutter_web/components/nav_header.dart';
import 'package:facebook_flutter_web/components/nav_item.dart';
import 'package:facebook_flutter_web/constants.dart';
import 'package:facebook_flutter_web/components/circle_icon.dart';
import 'package:facebook_flutter_web/components/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Nav extends StatelessWidget {
  final Function on_add_clicked;
  final Function on_messenger_Clicked;
  final Function on_notification_clicked;
  final Function on_profile_clicked;

  final Function on_tab_1_clicked;
  final Function on_tab_2_clicked;
  final Function on_tab_3_clicked;
  final Function on_tab_4_clicked;

  final bool tab_1_active;
  final bool tab_2_active;
  final bool tab_3_active;
  final bool tab_4_active;

  final Color color_1;
  final Color color_2;
  final Color color_3;
  final Color color_4;


  const Nav({Key key, this.on_add_clicked, this.on_messenger_Clicked, this.on_notification_clicked, this.on_profile_clicked, this.color_1, this.color_2, this.color_3, this.color_4, this.on_tab_1_clicked, this.on_tab_2_clicked, this.on_tab_3_clicked, this.on_tab_4_clicked, this.tab_1_active, this.tab_2_active, this.tab_3_active, this.tab_4_active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: normal_color.withOpacity(0.5), width: 0.5))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left :8.0, right: 8),
        child: Row(
          children: [
            NavHeader(),
            Expanded(child: SizedBox()),
            NavItem(
              icon:  tab_1_active == true ? MdiIcons.homeVariant: MdiIcons.homeVariantOutline,
              icon_color: tab_1_active == true ? Colors.blue :icon_color,
              tab_color:tab_1_active == true ? Colors.blue : Colors.transparent,
              onpress: on_tab_1_clicked,
            ),
            NavItem(
              icon: tab_2_active == true ? Icons.ondemand_video: Icons.ondemand_video,
              icon_color: tab_2_active == true ? Colors.blue :icon_color,
              tab_color:tab_2_active == true ? Colors.blue : Colors.transparent,
              onpress: on_tab_2_clicked,
            ),
            NavItem(
              icon: tab_3_active == true ? MdiIcons.accountGroup :MdiIcons.accountGroupOutline,
              icon_color: tab_3_active == true ? Colors.blue :icon_color,
              tab_color:tab_3_active == true ? Colors.blue : Colors.transparent,
              onpress: on_tab_3_clicked,
            ),
            NavItem(
              icon:  tab_3_active == true ? MdiIcons.gamepadCircleOutline :MdiIcons.gamepadCircle,
              icon_color: tab_4_active == true ? Colors.blue :icon_color,
              tab_color:tab_4_active == true ? Colors.blue : Colors.transparent,
              onpress: on_tab_4_clicked,
            ),

            Expanded(child: SizedBox()),

            ProfileImageComponent(
              height: 40,
              width: 40,
              image: "assets/images/profile_one.jpg",
            ),
            SizedBox(width: 10,),
            Text("Jake ", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),),

            CircleIcon(
              icon: Icons.add,
              icon_color: color_1,
              onpress: on_add_clicked,
            ),
            CircleIcon(
              icon: FontAwesomeIcons.facebookMessenger,
              icon_color: color_2,
              onpress: on_messenger_Clicked,
            ),
            CircleIcon(
              icon: FontAwesomeIcons.solidBell,
              icon_color: color_3,
              onpress: on_notification_clicked,
            ),
            CircleIcon(
              icon: FontAwesomeIcons.angleDown,
              icon_color: color_4,
              onpress: on_profile_clicked,
            )
          ],
        ),
      ),
    );
  }
}
