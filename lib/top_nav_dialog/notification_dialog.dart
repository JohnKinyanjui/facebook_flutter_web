import 'dart:html';

import 'package:facebook_flutter_web/components/notification_list_container.dart';
import 'package:facebook_flutter_web/components/stack_profile_image.dart';
import 'package:facebook_flutter_web/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 10,),

              Text("Notifications",style: header_dialog_text_large,),
              Expanded(child: SizedBox())
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Today",style: header_dialog_text_small,)
            ],
          ),
          SizedBox(height: 20,),
          NotificationListContainer(
            image: "assets/images/gamology.jpg",
            icon: FontAwesomeIcons.fontAwesomeFlag,
            color: Colors.amber,
            title: "Gamology - Best of gaming",
            sub: "posted a new video today",
            when: "11hrs ago",
          ),
          NotificationListContainer(
            image: "assets/images/profile_four.jpeg",
            icon: FontAwesomeIcons.facebookMessenger,
            color: Colors.blue,
            title: "Sarah Oroku",
            sub: "sent to you a new message",
            when: "1hr ago",
          ),
          NotificationListContainer(
            image: "assets/images/flutter.jpg",
            icon: FontAwesomeIcons.fontAwesomeFlag,
            color: Colors.amber,
            title: "Flutter - Best of flutter",
            sub: "posted a new video today of the flutter web",
            when: "11hrs ago",
          ),
          NotificationListContainer(
            image: "assets/images/profile_one.jpg",
            icon: FontAwesomeIcons.users,
            color: Colors.blue,
            title: "Jakes",
            sub: "you were tagged in an image",
            when: "11hrs ago",
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Text("Yesterday",style: header_dialog_text_small,)
            ],
          ),
          SizedBox(height: 10,),

          NotificationListContainer(
            image: "assets/images/profile_three.jpeg",
            icon: FontAwesomeIcons.facebookMessenger,
            color: Colors.blue,
            title: "Josh",
            sub: "Invited you to a Dev PAges",
            when: "1 days ago",
          ),

        ],
      ),
    );
  }
}
