import 'package:flutter/material.dart';

class SponsoredList extends StatelessWidget {
  final String image;
  final String title;
  final String sub;

  const SponsoredList({Key key, this.image, this.title, this.sub}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,style: TextStyle(fontSize: 15, color: Colors.grey[100], fontWeight: FontWeight.w400 ), maxLines: 2,),
                  SizedBox(height: 10,),
                  Text(sub,style: TextStyle(fontSize: 10, color: Colors.grey[100], fontWeight: FontWeight.w300),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
