// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hotel_go_task/core/api/api_constance.dart';
import 'package:hotel_go_task/features/home/data/models/home_model.dart';

import '../../../../core/api/exception_method.dart';
import '../../../../core/base_usecase/base_use_case.dart';

abstract class BaseHomeDataSource {
  Future<HomeModel> getHomeModel(NoParameters parameters);
}

class HomeDataSource extends BaseHomeDataSource {
  // final SharedPreferences sharedPreferences;

  HomeDataSource();

  @override
  Future<HomeModel> getHomeModel(NoParameters parameters) async {
    try {
      final response = await Dio().get(ApiConstance.hotelsUrl);
      if (response.statusCode == 200) {
        return HomeModel.fromJson(response.data);
      } else {
        debugPrint('${response.statusCode} Error in Data Source');
        throw HandleException(
          statusCode: response.statusCode!,
          message: response.data.toString(),
        );
      }
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode != null) {
        throw HandleException(
          statusCode: e.response!.statusCode!,
          message: e.response!.data.toString(),
        );
      } else {
        throw Exception(e.message);
      }
    }
  }

  // @override
  // Future<GetStoreCategoriesModel> getStoreCategories(
  //     NoParameters parameters) async {
  //   try {
  //     final response = await Dio().get(
  //       ApiConstance.getStoreCategoriesEndPoint,
  //       options: Options(
  //         headers: {
  //           'accept': ApiConstance.acceptHeader,
  //           'language': ApiConstance.langMethod(),
  //           'Tenant': ApiConstance.Tenant,
  //           // 'Authorization': 'Bearer ${ApiConstance.token()}'
  //         },
  //         validateStatus: (status) {
  //           // debugPrint(status.toString());
  //           return status! < 500;
  //         },
  //       ),
  //     );
  //     if (response.statusCode == 200) {
  //       // debugPrint(response.data.toString());
  //       return GetStoreCategoriesModel.fromJson(response.data);
  //     } else {
  //       debugPrint('${response.statusCode} Error in Data Source');
  //       throw HandleException(
  //         statusCode: response.statusCode!,
  //         message: response.data.toString(),
  //       );
  //     }
  //   }
//   on DioError catch (e) {
  //     if (e.response != null && e.response!.statusCode != null) {
  //       throw HandleException(
  //         statusCode: e.response!.statusCode!,
  //         message: e.response!.data.toString(),
  //       );
  //     } else {
  //       throw Exception(e.message);
  //     }
  //   }
  // }
}
