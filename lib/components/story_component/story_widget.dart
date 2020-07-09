import 'package:facebook_flutter_web/components/story_component/story_holder.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatefulWidget {
  StoryWidget({Key key}) : super(key: key);

  @override
  _StoryWidgetState createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
           StoryHolder(image: "assets/images/profile_two.jpg",profile_image: "assets/images/profile_one.jpg",name: "Jakes",),
            StoryHolder(image: "assets/images/flutter.jpg",profile_image: "assets/images/profile_three.jpeg",name: "Josh",),
            StoryHolder(image: "assets/images/nature_image.jpeg",profile_image: "assets/images/profile_two.jpg",name: "Driwnky",),
            StoryHolder(image: "assets/images/gamology.jpg",profile_image: "assets/images/gamology.jpg",name: "Gamelogy",),
            StoryHolder(image: "assets/images/profile_four.jpeg",profile_image: "assets/images/beatiful.jpg",name: "Sarah",),

          ],
      ),
    );
  }
}