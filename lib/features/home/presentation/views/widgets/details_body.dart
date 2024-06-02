// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bookly/features/home/presentation/views/widgets/book_details_appbar.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .18),
            child: const CustomBookImage(),
          ),
          SizedBox(
            height: 43.h,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: 5.h,
          ),
           Opacity(
            opacity: .7,
             child: Text(
              'The Jungle Book',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500
                
              ),
                       ),
           ),
          SizedBox(
            height: 5.h,
          ),
          const RatingItem()
        ],
      ),
    );
  }
}
