

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/model/book/book_model.dart';
import 'custom_book_image.dart';
import 'rating_item.dart';

class BestSellerBook extends StatelessWidget {
  BestSellerBook({Key? key, required this.index, required this.bookModel})
      : super(key: key);
  BookModel bookModel;
  int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomBookImage(
                  imagePath: bookModel.volumeInfo.imageLinks?.thumbnail ?? '')),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo.title ?? '',
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  style: Styles.textStyle14,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    // Spacer(),
                    // SizedBox(width: MediaQuery.of(context).size.width*.25,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: RatingItem(
                        count: bookModel.volumeInfo.pageCount ?? 0,
                        rating: '4.5',
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
