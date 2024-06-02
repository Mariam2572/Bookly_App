import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_book.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_body.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomHomeAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CustomBookImage();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 20.w, bottom: 20.h),
                child: const Text('Best Seller', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(child: BestSellerListView())
      ]),
    );
  }
}
