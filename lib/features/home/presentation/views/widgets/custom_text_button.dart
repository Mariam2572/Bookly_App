// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bookly/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  Color textColor;
  BorderRadiusGeometry? borderRadius;
  Color backgroundColor;
  CustomTextButton({
    Key? key,
    required this.text,
    required this.textColor,
    this.borderRadius,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(13),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16))),
      onPressed: () {},
      child: Text(
        text,
        style: Styles.textStyle18
            .copyWith(color: textColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
