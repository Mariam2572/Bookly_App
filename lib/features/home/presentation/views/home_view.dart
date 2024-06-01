import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_book.dart';
import 'package:bookly/features/home/presentation/views/widgets/recommended_book_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const RecommendedBookItem();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h,left: 20.w,bottom: 20.h),
            child:  const Text(
              'Best Seller',
              style: Styles.textStyle18
              
            ),
          ),
        const BestSellerBook()
        ],
      ),
    );
  }
}
