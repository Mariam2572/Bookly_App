import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/model/test/NewBook.dart';

import 'package:equatable/equatable.dart';

import '../../../data/repo/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());
  HomeRepo homeRepo;
  String? category;

  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category ?? '');
    result.fold((l) {
      emit(SimilarBooksError(errorMessage: l.errorMessage));
      print('=============================${l.errorMessage}');
    }, (r) => emit(SimilarBooksSuccess(bookModel: r)));
  }
}
