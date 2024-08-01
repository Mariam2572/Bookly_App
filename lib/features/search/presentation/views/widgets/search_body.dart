// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book/book_model.dart';
import 'package:bookly/features/search/presentation/views/widgets/result_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constant/constants.dart';

class SearchBody extends StatelessWidget {
  BookModel bookModel;
   SearchBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: Styles.textStyle18,
                  suffixIcon:
                      const Icon(FontAwesomeIcons.magnifyingGlass, size: 25),
                  enabledBorder: OutLineBorder(),
                  focusedBorder: OutLineBorder()),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Search Results',
              style: Styles.textStyle18.copyWith(fontFamily: kGTSectraFine),
            ),
          ),
          // 
           Expanded(child: ResultItem(bookModel:bookModel ,))
        ],
      ),
    );
  }

  OutlineInputBorder OutLineBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(color: Colors.white));
  }
}
