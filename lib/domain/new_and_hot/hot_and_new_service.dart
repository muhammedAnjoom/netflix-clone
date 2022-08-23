import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/new_and_hot/model/discover.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewDataResp>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNewDataResp>> getHotAndNewTvData();
}
