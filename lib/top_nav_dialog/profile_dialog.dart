import 'dart:html';

import 'package:facebook_flutter_web/components/circle_icon.dart';
import 'package:facebook_flutter_web/components/line.dart';
import 'package:facebook_flutter_web/constants.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12.0, right: 12),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/profile_one.jpg"), fit: BoxFit.cover),
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Jake Killington", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("See your profile", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),)

                ],
              ),

            ],
          ),
          SizedBox(height: 10,),
          Line(),
          SizedBox(height: 20,),
          Container(
            child: Row(
              children: [
                CircleIcon(
                  icon: Icons.feedback,
                  icon_color: icon_color,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Text("Give Feedback", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w300),),
                    Text("Help us improve the new facebook", style: TextStyle(color: Colors.grey[400], fontSize: 12),)

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Line(),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                CircleIcon(
                  icon: Icons.settings,
                  icon_color: icon_color,
                ),
                SizedBox(width: 10,),
                Text("Settings and Privacy", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FeatherIcons.chevronRight, color: icon_color,size: 35,),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                CircleIcon(
                  icon: Icons.help,
                  icon_color: icon_color,
                ),
                SizedBox(width: 10,),
                Text("Help and Support", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FeatherIcons.chevronRight, color: icon_color,size: 35,),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                CircleIcon(
                  icon: Icons.feedback,
                  icon_color: icon_color,
                ),
                SizedBox(width: 10,),
                Text("Dark Mode", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoSwitch(
                      activeColor: Colors.blue,
                      trackColor: icon_color,
                      value: true, onChanged: null)
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                CircleIcon(
                  icon: Icons.arrow_back_ios,
                  icon_color: icon_color,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Switch back to facebook classic", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w300),),
                    Text("Go to the previous facebook design", style: TextStyle(color: Colors.grey[500], fontSize: 12),)

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Row(
              children: [
                CircleIcon(
                  icon: Icons.exit_to_app,
                  icon_color: icon_color,
                ),
                SizedBox(width: 10,),
                Text("Log out", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),),
                Expanded(child: SizedBox()),

              ],
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
