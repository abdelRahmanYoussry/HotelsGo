import 'package:dartz/dartz.dart';
import 'package:hotel_go_task/core/api/exceptions.dart';
import 'package:hotel_go_task/core/base_usecase/base_use_case.dart';
import 'package:hotel_go_task/core/error/failure.dart';
import 'package:hotel_go_task/features/home/domin/entity/Home_base_entity.dart';

import '../../domin/repositories/BaseHomeRepository.dart';
import '../data_source/HomeDataSourse.dart';

class HomeRepository extends BaseHomeRepository {
  final BaseHomeDataSource baseHomeDataSource;

  HomeRepository(this.baseHomeDataSource);

  @override
  Future<Either<Failure, BasicHomeEntity>> getHomeModel(
      NoParameters parameters) async {
    final result = await baseHomeDataSource.getHomeModel(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message.toString()));
    }
  }

  // @override
  // Future<Either<Failure, GetStoreCategoriesEntity>> getStoreCategories(
  //     NoParameters parameters) async {
  //   final result = await baseHomeDataSource.getStoreCategories(parameters);
  //   try {
  //     return Right(result);
  //   } on ServerException catch (failure) {
  //     return Left(ServerFailure(failure.message.toString()));
  //   }
  // }
}
