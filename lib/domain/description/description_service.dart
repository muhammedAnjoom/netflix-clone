import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/description/model/description_resp/description_resp.dart';
import 'package:netflix_clone/domain/new_and_hot/model/discover.dart';

abstract class DescriptionService {
  Future<Either<MainFailure, DescriptionResp>> getMovieDescription(
      {required int id});
}
