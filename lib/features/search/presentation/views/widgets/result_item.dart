// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/model/book/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ResultItem extends StatelessWidget {
  BookModel bookModel;
   ResultItem({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.detailsPath);
              },
              child:  BestSellerBook(bookModel: bookModel,index: index,)),
        );
      },
    );
  }
}
