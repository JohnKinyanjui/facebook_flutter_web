import 'package:facebook_flutter_web/components/circle_icon.dart';
import 'package:facebook_flutter_web/components/icon_container.dart';
import 'package:facebook_flutter_web/top_nav_dialog/nav_dialog_holder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class AddDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Create",style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w800),),
            ),
            IconContainer(
              icon: FontAwesomeIcons.solidEdit,
              title: "Post",
              sub: "Share a post in news feed",
            ),
            SizedBox(height: 10,),
            IconContainer(
              icon: FontAwesomeIcons.history,
              title: "Story",
              sub: "Share a text or photo in your Story",
            ),
            SizedBox(height: 10,),
            IconContainer(
              icon: FontAwesomeIcons.solidStar,
              title: "Life Event",
              sub: "Share a post in news feed",
            ),
            SizedBox(height: 10,),
            Container(
              height: 0.5,
              width: double.infinity,
              color: icon_color,
            ),
            SizedBox(height: 10,),
            IconContainer(
              icon: FontAwesomeIcons.fontAwesomeFlag,
              title: "Page",
              sub: "connect and share with customers and fans",
            ),
            SizedBox(height: 10,),
            IconContainer(
              icon: FontAwesomeIcons.bullhorn,
              title: "Page",
              sub: "Advertise your business, brand or organization",
            ),
            SizedBox(height: 10,),
            IconContainer(
              icon: FontAwesomeIcons.users,
              title: "Group",
              sub: "Connect with people who share your interest",
            ),
            SizedBox(height: 10,),
            IconContainer(
              icon: FontAwesomeIcons.plusSquare,
              title: "Event",
              sub: "Bring people together with a public or private event",
            ),
          ],
        ),
    );
  }
}
