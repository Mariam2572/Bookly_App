part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksError extends NewestBooksState {
  final String errorMessage;

  const NewestBooksError({required this.errorMessage});
}
final class NewestBooksSuccess extends NewestBooksState {
  BookModel bookModel;
  NewestBooksSuccess({required this.bookModel});
}
