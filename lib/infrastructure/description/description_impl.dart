import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/description/model/description_resp/description_resp.dart';
import 'package:netflix_clone/domain/new_and_hot/hot_and_new_service.dart';
import 'package:netflix_clone/domain/new_and_hot/model/discover.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

import '../../core/strings.dart';
import '../../domain/description/description_service.dart';

@LazySingleton(as: DescriptionService)
class DescriptionMovie implements DescriptionService {
  @override
  Future<Either<MainFailure, DescriptionResp>> getMovieDescription(
      {required int id}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        '$kBaseUrl/movie/$id?api_key=$apiKey',
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DescriptionResp.fromJson(response.data);
        // log(result.toString());
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
