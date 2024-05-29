import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
         AppAssets.logo,
          height: MediaQuery.of(context).size.height*.13,
          
        ),
        const SizedBox(height: 10,),
        const Text('Read Free Books',
        textAlign: TextAlign.center,
       
        )
      ],
    );
  }
}
