import 'package:facebook_flutter_web/constants.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:facebook_flutter_web/components/message_list_container.dart';

class MessengerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Messenger",style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w800),),
              Expanded(child: SizedBox()),
              Icon(FontAwesomeIcons.expand, color: icon_color, size: 20,),
              SizedBox(width: 15,),
              Icon(FontAwesomeIcons.video, color: icon_color, size: 20,),
              SizedBox(width: 15,),
              Icon(FontAwesomeIcons.solidEdit, color: icon_color, size: 20,),
              SizedBox(width: 15,),
              Icon(Icons.more_horiz, color: icon_color, size: 20,),
              SizedBox(width: 15,),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: text_field_Color,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(FeatherIcons.search, color: icon_color,),
                  SizedBox(width: 10,),
                  Text("Search Messenger" ,style: TextStyle(color: icon_color),)
                ],
              ),
          ),
          MessageContainer(
            image: "assets/images/profile_four.jpeg",
            title: "Sarah Oroku",
            sub: "Am on bro? - 1dy ago",
          ),
          MessageContainer(
            image: "assets/images/profile_two.jpg",
            title: "Drew KIl",
            sub: "Welcome to Kenya - 1hr ago",
          ),
          MessageContainer(
            image: "assets/images/profile_three.jpeg",
            title: "Josh Willington",
            sub: "This looks nicw - 1hr ago",
          )
        ],
      ),
    );
  }
}
