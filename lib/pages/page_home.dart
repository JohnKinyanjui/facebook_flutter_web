import 'package:amazingneoicons/amazingneoicons.dart';
import 'package:facebook_flutter_web/components/home_components/post_component.dart';
import 'package:facebook_flutter_web/components/line.dart';
import 'package:facebook_flutter_web/components/post_components/post_widget.dart';
import 'package:facebook_flutter_web/components/profile_image_component.dart';
import 'package:facebook_flutter_web/components/sponsored_list.dart';
import 'package:facebook_flutter_web/components/story_component/story_widget.dart';
import 'package:facebook_flutter_web/constants.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: background_color,
      body: Row(
        children: [
          /*
          * Middle page side bar
          * */
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: height,
              width: 300,
              color: background_color,
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
                        child: Text("Jakes",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          Expanded(child:SizedBox()),
          /*
          * Middle page side bar
          * */

          Padding(
            padding: const EdgeInsets.only(top :8.0,left: 8,right: 8),
            child: Container(
              height: height,
              width: 600,
              color: background_color,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StoryWidget(),
                    SizedBox(height: 30,),
                    PostComponent(),
                    PostWidget()
                  ],
                ),
              ),
            ),
          ),

          Expanded(child:SizedBox()),

          /*
          * Left side bar
          * */
          Container(
            height: height,
            width:300,
            color: background_color,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text("Sponsored", style: TextStyle(color: icon_color, fontSize: 16, fontWeight: FontWeight.w800),),
                  SizedBox(height: 15,),

                  SponsoredList(
                    image: "assets/images/profile_two.jpg",
                    title: "Welcome to Kenya, visit the kings",
                    sub: "www.kenya.co.ke",
                  ),
                  SponsoredList(
                    image: "assets/images/profile_one.jpg",
                    title: "King Photos - Became a star",
                    sub: "www.king_photos.co.ke",
                  ),
                  SizedBox(height: 10,),
                  Text("Your Pages", style: TextStyle(color: icon_color, fontSize: 16, fontWeight: FontWeight.w800),),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProfileImageComponent(
                        height: 40,
                        width: 40,
                        image: "assets/images/profile_one.jpg",
                      ),
                      SizedBox(width: 10,),
                      Text("King Photos",style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),)
                    ],
                  ),
                  SizedBox(height: 10,),

                  Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(FeatherIcons.messageCircle, color: icon_color, size: 15,),
                          SizedBox(width: 10,),
                          Text("2+ messages",style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Icon(FeatherIcons.bell, color: icon_color, size: 15,),
                           SizedBox(width: 10,),
                           Text("20+ notifications",style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w400,),)
                         ],
                       ),
                     ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.bullhorn, color: icon_color, size: 15,),
                          SizedBox(width: 10,),
                          Text("20+ notifications",style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w400),)
                        ],
                      ),
                    )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
