import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/home/data/model/test/NewBook.dart';

import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<NewBook>>> fetchNewestBooks();
  Future<Either<Failure, List<NewBook>>> fetchFeaturedBooks();
  Future<Either<Failure, List<NewBook>>> fetchSimilarBooks(
      {required String category});
}
