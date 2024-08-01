


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/_errors/error_widget.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/services_locator.dart';
import '../../../data/repo/home_repo_impl.dart';
import '../../manager/featured_cubit/featured_books_cubit.dart';
import '../../manager/featured_cubit/featured_books_state.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatefulWidget {
  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  FeaturedBooksCubit cubit = FeaturedBooksCubit(getIt.get<HomeRepoImpl>());
  @override
  // void initState() {
  //   cubit.fetchFeaturedBooks();
  //   // TODO: implement initState
  //   super.initState();
  // }
  // BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      bloc: cubit..fetchFeaturedBooks(),
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is FeaturedBooksError) {
          return Center(
              child: CustomErrorWidget(
            text: state.errorMessage,
            onPressed: () => cubit.fetchFeaturedBooks(),
          ));
        } else if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.bookModel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push(AppRouter.detailsPath, extra: state.bookModel[index]);
                  },
                  child: CustomBookImage(
                      imagePath: state.bookModel[index].volumeInfo.imageLinks
                              ?.thumbnail ??
                          ''),
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
