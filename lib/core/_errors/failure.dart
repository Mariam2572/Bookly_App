

import 'package:dio/dio.dart';

class Failure {
  String errorMessage;
  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: 'Connection timeout with Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMessage: 'Something went wrong(badCertificate)');
      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request is canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Please check internet connection');
      case DioExceptionType.unknown:
        return ServerFailure(errorMessage: 'Something went wrong(unknown)');
    }
    return ServerFailure(errorMessage: 'Something went wrong(default)');
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode >= 200 && statusCode < 300) {
      return response;
    }
    return ServerFailure(errorMessage: 'Server Error ');
  }
}
