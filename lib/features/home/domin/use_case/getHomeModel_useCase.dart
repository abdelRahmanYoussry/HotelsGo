import 'package:dartz/dartz.dart';
import 'package:hotel_go_task/features/home/domin/entity/Home_base_entity.dart';

import '../../../../core/base_usecase/base_use_case.dart';
import '../../../../core/error/failure.dart';
import '../repositories/BaseHomeRepository.dart';

class GetHomeModelUseCase extends BaseUseCase<BasicHomeEntity, NoParameters> {
  BaseHomeRepository baseHomeRepository;
  GetHomeModelUseCase(this.baseHomeRepository);
  @override
  Future<Either<Failure, BasicHomeEntity>> call(NoParameters parameters) {
    return baseHomeRepository.getHomeModel(parameters);
  }
}
