// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/features/home/data/model/test/NewBook.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_body.dart';
import 'package:flutter/material.dart';


class DetailsView extends StatefulWidget {
  final NewBook newBook;
  const DetailsView({
    Key? key,
    required this.newBook,
  }) : super(key: key);
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(newBookModel: widget.newBook)
    );
  }
}
