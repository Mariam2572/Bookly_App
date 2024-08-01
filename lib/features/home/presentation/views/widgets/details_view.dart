// ignore_for_file: public_member_api_docs, sort_constructors_first



import 'package:bookly/features/home/data/model/book/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  final BookModel bookModel;
  const DetailsView({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(bookModel: widget.bookModel)
    );
  }
}
