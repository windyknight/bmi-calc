import "package:flutter/material.dart";
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.iconImage, this.captionText = ""});
  final IconData? iconImage;
  final String captionText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.iconImage,
          size: 80,
        ),
        SizedBox(height: 15,),
        Text(
          this.captionText,
          style: captionTextStyle,
        ),
      ],
    );
  }
}