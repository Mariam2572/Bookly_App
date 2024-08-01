

import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());
  HomeRepo homeRepo;
  String? category;

  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category ?? '');
    result.fold((l) {
      emit(SimilarBooksError(errorMessage: l.errorMessage));
    }, (r) => emit(SimilarBooksSuccess(bookModel: r)));
  }
}
