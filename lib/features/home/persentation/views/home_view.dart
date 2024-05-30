import 'package:bookly/features/home/persentation/views/widgets/book_list_view.dart';
import 'package:bookly/features/home/persentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          SizedBox(
           height: MediaQuery.of(context).size.height*.3,

            child: const BookListView())
        ],
      ),
    );
  }
}
