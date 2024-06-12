import 'dart:convert';

import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/home/data/model/test/NewBook.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);
  Future<Either<Failure, List<NewBook>>> get({required String endPoint}) async {
    try {
      var response = await _dio.get('$_baseUrl$endPoint');
      var data = response.data;

      List<NewBook> books = [];
      for (var item in data['items']) {
        try {
          books.add(NewBook.fromJson(item));
        } catch (e) {
          books.add(NewBook.fromJson(item));
        }
      }
      return Right(books);
      // return Right(BookModel.fromJson(response.data));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
    // BookModel.fromJson(jsonDecode(response.data));
  }
}
/**
 * List<BookEntity> parseJsonToData(Map<String, dynamic> data) {
  final Set<BookEntity> booksSet = {};

  if (data['items'] != null) {
    for (var bookVolume in data['items']) {
      booksSet.add(
        BookModel.fromJson(bookVolume),
      );
    }
  }

  return booksSet.toList();
}
 */