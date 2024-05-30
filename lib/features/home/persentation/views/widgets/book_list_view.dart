import 'package:bookly/features/home/persentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
      return CustomBookItem();
    },);
  }
}