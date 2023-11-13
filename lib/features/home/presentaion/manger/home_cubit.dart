import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_go_task/features/home/domin/entity/Home_base_entity.dart';
import 'package:hotel_go_task/features/home/domin/use_case/getHomeModel_useCase.dart';

import '../../../../core/base_usecase/base_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  static HomeCubit get(context) => BlocProvider.of(context);

  HomeCubit(this.getHomeModelUseCase) : super(HomeInitial());
  final GetHomeModelUseCase getHomeModelUseCase;
  BasicHomeEntity? basicHomeEntity;
  RangeValues currentRangeValues = const RangeValues(10, 1000);
  // Future<void> getHomeScreenModel() async {
  //   Dio().get(ApiConstance.hotelsUrl).then((value) {
  //     debugPrint(value.data.toString());
  //   });
  // }
  Future<void> getHomeModel() async {
    emit(GetHomeModelLoadingState());
    try {
      final result = await getHomeModelUseCase(const NoParameters());
      result.fold((l) {}, (r) {
        basicHomeEntity = r;
        debugPrint(basicHomeEntity!.homeList[0].image.toString());
        emit(GetHomeModelSuccessState());
      });
    } catch (e) {
      debugPrint(e.toString());
      emit(GetHomeModelErrorState());
    }
  }

  void setPriceSlider({required RangeValues value}) {
    currentRangeValues = value;
    emit(SetPriceSliderSuccessState());
  }
}
