import 'package:bookly/core/Api/api_constant.dart';
import 'package:bookly/core/Api/api_service.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/home/data/model/test/NewBook.dart';

import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<NewBook>>> fetchNewestBooks() async {
    var data = await apiService.get(endPoint: ApiConstant.newestEndPoint);
    return data.fold((l) => Left(ServerFailure(errorMessage: l.errorMessage)),
        (response) => Right(response));
  }

  @override
  Future<Either<Failure, List<NewBook>>> fetchFeaturedBooks() async {
    var data = await apiService.get(endPoint: ApiConstant.featuredEndPoint);
    return data.fold((l) => Left(ServerFailure(errorMessage: l.errorMessage)),
        (response) => Right(response));
  }

  @override
  Future<Either<Failure, List<NewBook>>> fetchSimilarBooks(
      {required String category}) async {
    var data = await apiService.get(endPoint: ApiConstant.similarEndPoint);
    return data.fold((l) => Left(ServerFailure(errorMessage: l.errorMessage)),
        (response) => Right(response));
  }
}
