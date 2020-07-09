import 'package:facebook_flutter_web/components/stack_profile_image.dart';
import 'package:facebook_flutter_web/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NotificationListContainer extends StatelessWidget {
  final String image;
  final IconData icon;
  final Color color;
  final String title;
  final String sub;
  final String when;

  const NotificationListContainer({Key key, this.image, this.icon, this.color, this.title, this.sub, this.when}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 10,),
          StackProfileImage(
            image: image,
            icon: icon,
            color: color,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w800),),
              Text(sub, style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text(when, style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.w800),),

            ],
          ),
          Expanded(child: SizedBox()),

        ],
      ),
    );
  }
}
