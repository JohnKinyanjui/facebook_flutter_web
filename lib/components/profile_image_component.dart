import 'package:flutter/material.dart';

class ProfileImageComponent extends StatelessWidget {
  final double height;
  final double width;
  final  String image;

  ProfileImageComponent({this.height, this.width, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
        ),
    );
  }
}
