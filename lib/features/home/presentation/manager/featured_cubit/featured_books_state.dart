

import 'package:bookly/features/home/data/model/book/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksError extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksError({required this.errorMessage});
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookModel> bookModel;
  FeaturedBooksSuccess(this.bookModel);
}
