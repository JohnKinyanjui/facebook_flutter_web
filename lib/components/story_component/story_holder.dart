import 'package:facebook_flutter_web/constants.dart';
import 'package:flutter/material.dart';

class StoryHolder extends StatelessWidget {
  final String image;
  final String profile_image;
  final String name;

  const StoryHolder({Key key, this.image, this.profile_image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,width: 2),
                        image: DecorationImage(image: AssetImage(profile_image), fit: BoxFit.cover),
                        shape: BoxShape.circle

                    ),

                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name,style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),),
            )
          ],
        ),
      ),
    );
  }
}
