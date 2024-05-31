import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerBook extends StatelessWidget {
  const BestSellerBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Colors.red,
                  image: DecorationImage(
                    image: const AssetImage(AppAssets.testImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                child: const Text('Harry Potter and the Goblet of Fire',
                style: Styles.textStyle20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,),
              )
            ],
          )
        ],
        
      ),
    );
    
  }
}
