import 'package:facebook_flutter_web/components/profile_image_component.dart';
import 'package:facebook_flutter_web/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../line.dart';

class PostComponent extends StatefulWidget {
  PostComponent({Key key}) : super(key: key);

  @override
  _PostComponentState createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                ProfileImageComponent(
                  height: 40,
                  width: 40,
                  image: "assets/images/profile_one.jpg",
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 500,
                    decoration: BoxDecoration(
                        color: text_field_Color,
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("What's on your mind, Jakes?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Line(),
            Expanded(child: SizedBox()),

            Row(
              children: [
                Expanded(child: SizedBox()),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.video, color: Colors.red[900], size: 30,),
                ),
                Text("Live Video",style: TextStyle(color: icon_color, fontSize: 15, fontWeight: FontWeight.w800),),

                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.photoVideo, color: Colors.green, size: 30,),
                ),
                Text("Photo/Video",style: TextStyle(color: icon_color, fontSize: 15, fontWeight: FontWeight.w800),),

                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.smile, color: Colors.yellow,size: 30,),
                ),
                Text("Live Video",style: TextStyle(color: icon_color, fontSize: 15, fontWeight: FontWeight.w800)),
                Expanded(child: SizedBox()),

              ],
            )
          ],
        ),
      ),
    );
  }
}