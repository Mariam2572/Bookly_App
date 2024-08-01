

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repo/home_repo_impl.dart';
import '../_api/api_service.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: ApiService(Dio())));
}
