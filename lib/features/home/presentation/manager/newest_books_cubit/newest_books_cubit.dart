

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo.dart';
import 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((l) => emit(NewestBooksError(errorMessage: l!.errorMessage)),
        (r) => emit(NewestBooksSuccess(bookModel: r)));
  }
}
