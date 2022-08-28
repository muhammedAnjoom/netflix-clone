// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'description_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DescriptionEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadDataMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? loadDataMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadDataMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataMovie value) loadDataMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadDataMovie value)? loadDataMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataMovie value)? loadDataMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DescriptionEventCopyWith<DescriptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionEventCopyWith<$Res> {
  factory $DescriptionEventCopyWith(
          DescriptionEvent value, $Res Function(DescriptionEvent) then) =
      _$DescriptionEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$DescriptionEventCopyWithImpl<$Res>
    implements $DescriptionEventCopyWith<$Res> {
  _$DescriptionEventCopyWithImpl(this._value, this._then);

  final DescriptionEvent _value;
  // ignore: unused_field
  final $Res Function(DescriptionEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$LoadDataMovieCopyWith<$Res>
    implements $DescriptionEventCopyWith<$Res> {
  factory _$$LoadDataMovieCopyWith(
          _$LoadDataMovie value, $Res Function(_$LoadDataMovie) then) =
      __$$LoadDataMovieCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$LoadDataMovieCopyWithImpl<$Res>
    extends _$DescriptionEventCopyWithImpl<$Res>
    implements _$$LoadDataMovieCopyWith<$Res> {
  __$$LoadDataMovieCopyWithImpl(
      _$LoadDataMovie _value, $Res Function(_$LoadDataMovie) _then)
      : super(_value, (v) => _then(v as _$LoadDataMovie));

  @override
  _$LoadDataMovie get _value => super._value as _$LoadDataMovie;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$LoadDataMovie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadDataMovie implements LoadDataMovie {
  const _$LoadDataMovie({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DescriptionEvent.loadDataMovie(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDataMovie &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$LoadDataMovieCopyWith<_$LoadDataMovie> get copyWith =>
      __$$LoadDataMovieCopyWithImpl<_$LoadDataMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) loadDataMovie,
  }) {
    return loadDataMovie(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? loadDataMovie,
  }) {
    return loadDataMovie?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? loadDataMovie,
    required TResult orElse(),
  }) {
    if (loadDataMovie != null) {
      return loadDataMovie(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataMovie value) loadDataMovie,
  }) {
    return loadDataMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadDataMovie value)? loadDataMovie,
  }) {
    return loadDataMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataMovie value)? loadDataMovie,
    required TResult orElse(),
  }) {
    if (loadDataMovie != null) {
      return loadDataMovie(this);
    }
    return orElse();
  }
}

abstract class LoadDataMovie implements DescriptionEvent {
  const factory LoadDataMovie({required final int id}) = _$LoadDataMovie;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$LoadDataMovieCopyWith<_$LoadDataMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DescriptionState {
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get relaseDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DescriptionStateCopyWith<DescriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionStateCopyWith<$Res> {
  factory $DescriptionStateCopyWith(
          DescriptionState value, $Res Function(DescriptionState) then) =
      _$DescriptionStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String overview,
      String posterPath,
      String relaseDate,
      String status,
      double voteAverage,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$DescriptionStateCopyWithImpl<$Res>
    implements $DescriptionStateCopyWith<$Res> {
  _$DescriptionStateCopyWithImpl(this._value, this._then);

  final DescriptionState _value;
  // ignore: unused_field
  final $Res Function(DescriptionState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? relaseDate = freezed,
    Object? status = freezed,
    Object? voteAverage = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      relaseDate: relaseDate == freezed
          ? _value.relaseDate
          : relaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DescriptionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String overview,
      String posterPath,
      String relaseDate,
      String status,
      double voteAverage,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DescriptionStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? title = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? relaseDate = freezed,
    Object? status = freezed,
    Object? voteAverage = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_Initial(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      relaseDate: relaseDate == freezed
          ? _value.relaseDate
          : relaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.title,
      required this.overview,
      required this.posterPath,
      required this.relaseDate,
      required this.status,
      required this.voteAverage,
      required this.isLoading,
      required this.isError});

  @override
  final String title;
  @override
  final String overview;
  @override
  final String posterPath;
  @override
  final String relaseDate;
  @override
  final String status;
  @override
  final double voteAverage;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'DescriptionState(title: $title, overview: $overview, posterPath: $posterPath, relaseDate: $relaseDate, status: $status, voteAverage: $voteAverage, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.relaseDate, relaseDate) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(relaseDate),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DescriptionState {
  const factory _Initial(
      {required final String title,
      required final String overview,
      required final String posterPath,
      required final String relaseDate,
      required final String status,
      required final double voteAverage,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  String get title;
  @override
  String get overview;
  @override
  String get posterPath;
  @override
  String get relaseDate;
  @override
  String get status;
  @override
  double get voteAverage;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
