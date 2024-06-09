
import 'dart:convert';

import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);
  Future<Either<Failure, BookModel>> get({required String endPoint}) async {
    try {
      var response = await _dio.get('$_baseUrl$endPoint');

      return Right(BookModel.fromJson(response.data));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
    // BookModel.fromJson(jsonDecode(response.data));
  }
}
