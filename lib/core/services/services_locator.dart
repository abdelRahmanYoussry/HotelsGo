import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_go_task/features/home/domin/use_case/getHomeModel_useCase.dart';

import '../../features/home/data/data_source/HomeDataSourse.dart';
import '../../features/home/data/repositories/HomeRepository.dart';
import '../../features/home/domin/repositories/BaseHomeRepository.dart';
import '../../features/home/presentaion/manger/home_cubit.dart';
import '../bloc_observer/bloc_observer.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //// Bloc
  final myBlocObserver = Bloc.observer = MyBlocObserver();
  sl.registerFactory(() => myBlocObserver);

  sl.registerFactory(() => HomeCubit(sl()));

  // //// UseCases

  //Home
  sl.registerLazySingleton(() => GetHomeModelUseCase(sl()));

  // //// Repository
  sl.registerLazySingleton<BaseHomeRepository>(() => HomeRepository(sl()));

  ///// SHARED PREFERENCES
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerFactory(() => sharedPreferences);
  //// DIO
  sl.registerLazySingleton(() => LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ));
  sl.registerLazySingleton(() => Dio());

  //DataSource
  // sl.registerLazySingleton<BaseAuthDataSource>(() => AuthDataSource(sharedPreferences: sl()));
  sl.registerLazySingleton<BaseHomeDataSource>(() => HomeDataSource());
  // sl.registerLazySingleton<BaseProfileDataSource>(() => ProfileDataSource(sharedPreferences: sl()));
}
