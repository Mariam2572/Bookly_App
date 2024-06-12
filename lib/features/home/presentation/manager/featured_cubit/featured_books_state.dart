part of 'featured_books_cubit.dart';

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
  List<NewBook> bookModel;
  FeaturedBooksSuccess(this.bookModel);
}
