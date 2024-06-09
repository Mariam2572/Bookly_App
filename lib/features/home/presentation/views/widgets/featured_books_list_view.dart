import 'package:bookly/core/constant/constants.dart';
import 'package:bookly/core/utils/services_locator.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            child:  CircularProgressIndicator(),
          );
        } else if (state is FeaturedBooksError) {
          return Text(state.errorMessage,style: Styles.textStyle20,);
        } else if (state is FeaturedBooksSuccess) {
          
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.bookModel.items?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  CustomBookImage(imagePath: state.bookModel.items?[index].volumeInfo?.imageLinks?.thumbnail??'' ,);
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
