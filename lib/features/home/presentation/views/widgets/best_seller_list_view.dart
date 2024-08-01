

import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/_errors/error_widget.dart';
import '../../../../../core/utils/services_locator.dart';
import '../../../data/repo/home_repo_impl.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import '../../manager/newest_books_cubit/newest_books_state.dart';

class BestSellerListView extends StatelessWidget {
  BestSellerListView({super.key});
  NewestBooksCubit cubit = NewestBooksCubit(getIt.get<HomeRepoImpl>());
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      bloc: cubit..fetchNewestBooks(),
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NewestBooksError) {
          return CustomErrorWidget(
            text: state.errorMessage,
            onPressed: () => cubit.fetchNewestBooks(),
          );
        } else if (state is NewestBooksSuccess) {
          return ListView.builder(
            // shrinkWrap: true,
            itemCount: state.bookModel.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push(AppRouter.detailsPath,
                         extra: state.bookModel[index]);
                  },
                  child: BestSellerBook(
                    bookModel: state.bookModel[index],
                    index: index,
                  ),
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
