import 'package:bookly/core/Api/api_service.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUp (){
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(apiService: ApiService(Dio())));
}