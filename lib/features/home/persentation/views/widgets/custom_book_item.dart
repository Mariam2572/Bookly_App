import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.red,
            image: DecorationImage(image: const AssetImage(AppAssets.testImage),
            fit: BoxFit.fill,
            
            )
          ),
          
        ),
      ),
    );
  }
}