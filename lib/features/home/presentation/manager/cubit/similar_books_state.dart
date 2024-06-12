part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksError extends SimilarBooksState {
  String errorMessage;
  SimilarBooksError({required this.errorMessage});
}

final class SimilarBooksSuccess extends SimilarBooksState {
  List<NewBook> bookModel;
  SimilarBooksSuccess({required this.bookModel});
}
