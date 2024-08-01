

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_router.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppAssets.logoS,
            height: 25.1.h,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.searchPath,);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
              )),
        ],
      ),
    );
  }
}
