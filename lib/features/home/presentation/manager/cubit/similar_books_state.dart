

import 'package:bookly/features/home/data/model/book/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksError extends SimilarBooksState {
  String ?errorMessage;
  SimilarBooksError({required this.errorMessage});
}

final class SimilarBooksSuccess extends SimilarBooksState {
  List<BookModel> bookModel;
  SimilarBooksSuccess({required this.bookModel});
}
