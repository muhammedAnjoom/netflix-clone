
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/new_and_hot/hot_and_new_service.dart';
import 'package:netflix_clone/domain/new_and_hot/model/discover.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImplementation implements HotAndNewService{
  @override
  Future<Either<MainFailure, HotAndNewDataResp>> getHotAndNewMovieData() async{
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotAndNewMovie,
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewDataResp.fromJson(response.data);
        log(result.toString());
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
  

  @override
  Future<Either<MainFailure, HotAndNewDataResp>> getHotAndNewTvData() async{
   try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotAndNewTv,
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewDataResp.fromJson(response.data);
        log(result.toString());
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