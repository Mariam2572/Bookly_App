

import 'package:bookly/features/search/presentation/views/widgets/search_body.dart';
import 'package:flutter/material.dart';

import '../../../../home/data/model/book/book_model.dart';

class SearchView extends StatelessWidget {
  BookModel bookModel;
   SearchView({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SearchBody(bookModel: bookModel,),
    );
  }
}
