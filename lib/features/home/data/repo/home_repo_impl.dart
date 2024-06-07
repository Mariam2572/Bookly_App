import 'package:bookly/core/Api/api_constant.dart';
import 'package:bookly/core/Api/api_service.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  ApiService apiService;
  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, BookModel>> fetchNewestBooks() async {

  var data = await apiService.get(endPoint: ApiConstant.newestEndPoint);
 return data.fold((l) => Left(ServerFailure(errorMessage:l.errorMessage )), (response) => Right(response)); 
 
    
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}