import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_book.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
      return Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.detailsPath);
          },
          child: const BestSellerBook()),
      );
    },);
  }
}

