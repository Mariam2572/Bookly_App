
import 'package:equatable/equatable.dart';

import '../../../data/model/book/book_model.dart';

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
  List<BookModel> bookModel;
  NewestBooksSuccess({required this.bookModel});
}
