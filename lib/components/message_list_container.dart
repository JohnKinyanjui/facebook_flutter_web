import 'package:facebook_flutter_web/constants.dart';
import 'package:facebook_flutter_web/components/circle_icon.dart';
import 'package:facebook_flutter_web/components/profile_image_component.dart';
import 'package:facebook_flutter_web/data/messenger_data.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  final String image;
  final String title;
  final String sub;

  const MessageContainer({Key key, this.image, this.title, this.sub})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          ProfileImageComponent(
            height: 50,
            width: 50,
            image: image,
          ),
          SizedBox(width: 20,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: TextStyle(color: icon_color, fontSize: 18),),
              SizedBox(height: 4,),
              Text(
                sub, style: TextStyle(color: Colors.grey[600], fontSize: 12),)

            ],
          ))
        ],
      ),
    );
  }
}
