part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetHomeModelLoadingState extends HomeState {}

class GetHomeModelSuccessState extends HomeState {}

class SetPriceSliderSuccessState extends HomeState {}

class GetHomeModelErrorState extends HomeState {}
