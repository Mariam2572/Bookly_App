

import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/featured_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksError(errorMessage: failure.errorMessage));
      print('=========================${failure.errorMessage}');
    }, (books) => emit(FeaturedBooksSuccess(books)));
  }
}
