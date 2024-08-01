

import 'package:bookly/core/utils/services_locator.dart';
import 'package:bookly/features/home/presentation/manager/cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/_errors/error_widget.dart';
import '../../../data/repo/home_repo_impl.dart';
import '../../manager/cubit/similar_books_state.dart';

class SimilarBooks extends StatelessWidget {
  SimilarBooksCubit cubit =
      SimilarBooksCubit(homeRepo: getIt.get<HomeRepoImpl>());
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      bloc: cubit..fetchSimilarBooks(),
      builder: (context, state) {
        if (state is SimilarBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SimilarBooksError) {
          CustomErrorWidget(
            text: state.errorMessage??'',
            onPressed: () => cubit.fetchSimilarBooks(),
          );
        }
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              itemCount: state.bookModel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imagePath:
                      state.bookModel[index].volumeInfo.imageLinks?.thumbnail ?? '',
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
