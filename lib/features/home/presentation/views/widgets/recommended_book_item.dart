import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedBookItem extends StatelessWidget {
  const RecommendedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.red,
              image: DecorationImage(
                image: const AssetImage(AppAssets.testImage),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
