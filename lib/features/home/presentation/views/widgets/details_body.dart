// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/features/home/data/model/test/NewBook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books.dart';

class DetailsBody extends StatelessWidget {
 NewBook newBookModel;
  DetailsBody({
    Key? key,
    required this.newBookModel,
  }) : super(key: key);
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
                  child: CustomBookImage(
                    imagePath: newBookModel.volumeInfo.imageLinks?.thumbnail??'',
                  ),
                ),
                SizedBox(
                  height: 43.h,
                ),
                Text(
                  newBookModel.volumeInfo.title ?? '',
                  style: Styles.textStyle30.copyWith(fontSize: 25),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    newBookModel.volumeInfo.authors?[0] ?? '',
                    style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                // const RatingItem(),
                SizedBox(
                  height: 35.h,
                ),
                const BookActions(),
                 Expanded(
                   child: SizedBox(
                     height: 30.h,
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
                SimilarBooks(),
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
