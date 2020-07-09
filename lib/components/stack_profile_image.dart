import 'package:flutter/material.dart';

class StackProfileImage extends StatelessWidget {
 final String image;
 final IconData icon;
 final Color color;

  const StackProfileImage({Key key, this.image, this.icon, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 100,
      child: Stack(
        children: [

          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white,
              image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
            ),
          ),
          Positioned(
            top: 40,
            left: 50,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(icon, color: Colors.white,size: 18,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
