import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_text_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bookly/features/home/presentation/views/widgets/book_details_appbar.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const RatingItem(),
                SizedBox(
                  height: 37.h,
                ),
                const BookActions(),
                const Expanded(
                  child: SizedBox(
                    height: 45,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                const SimilarBooks(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
