import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookImage(imagePath: AppAssets.testImageUrl,);
        },
      ),
    );
  }
}
