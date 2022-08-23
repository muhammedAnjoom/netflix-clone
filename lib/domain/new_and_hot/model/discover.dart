import 'package:json_annotation/json_annotation.dart';


part 'discover.g.dart';

@JsonSerializable()
class HotAndNewDataResp {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<HotAndNewData> results;

  HotAndNewDataResp({this.page, this.results = const []});

  factory HotAndNewDataResp.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataRespToJson(this);
}
@JsonSerializable()
class HotAndNewData {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name:'overview')
  String? overview;
 
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  HotAndNewData({
    this.adult,
    this.backdropPath,
 
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,

    this.posterPath,
    this.releaseDate,
    this.title,

  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}