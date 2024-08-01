

import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHomeAppBar(),
                FeaturedBooksListView(),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, left: 20.w, bottom: 20.h),
                  child: const Text('Best Seller', style: Styles.textStyle18),
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(child: BestSellerListView())
      ]),
    );
  }
}
