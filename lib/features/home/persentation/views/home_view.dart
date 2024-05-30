import 'package:bookly/features/home/persentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/persentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          CustomBookItem()
        ],
      ),
    );
  }
}
