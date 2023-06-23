// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() postsFetched,
    required TResult Function() carouselsFetched,
    required TResult Function(String id) postLiked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? postsFetched,
    TResult? Function()? carouselsFetched,
    TResult? Function(String id)? postLiked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? postsFetched,
    TResult Function()? carouselsFetched,
    TResult Function(String id)? postLiked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostsFetched value) postsFetched,
    required TResult Function(_CarouselsFetched value) carouselsFetched,
    required TResult Function(_PostLiked value) postLiked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostsFetched value)? postsFetched,
    TResult? Function(_CarouselsFetched value)? carouselsFetched,
    TResult? Function(_PostLiked value)? postLiked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostsFetched value)? postsFetched,
    TResult Function(_CarouselsFetched value)? carouselsFetched,
    TResult Function(_PostLiked value)? postLiked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() postsFetched,
    required TResult Function() carouselsFetched,
    required TResult Function(String id) postLiked,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? postsFetched,
    TResult? Function()? carouselsFetched,
    TResult? Function(String id)? postLiked,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? postsFetched,
    TResult Function()? carouselsFetched,
    TResult Function(String id)? postLiked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostsFetched value) postsFetched,
    required TResult Function(_CarouselsFetched value) carouselsFetched,
    required TResult Function(_PostLiked value) postLiked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostsFetched value)? postsFetched,
    TResult? Function(_CarouselsFetched value)? carouselsFetched,
    TResult? Function(_PostLiked value)? postLiked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostsFetched value)? postsFetched,
    TResult Function(_CarouselsFetched value)? carouselsFetched,
    TResult Function(_PostLiked value)? postLiked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PostsFetchedCopyWith<$Res> {
  factory _$$_PostsFetchedCopyWith(
          _$_PostsFetched value, $Res Function(_$_PostsFetched) then) =
      __$$_PostsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PostsFetchedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_PostsFetched>
    implements _$$_PostsFetchedCopyWith<$Res> {
  __$$_PostsFetchedCopyWithImpl(
      _$_PostsFetched _value, $Res Function(_$_PostsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PostsFetched implements _PostsFetched {
  const _$_PostsFetched();

  @override
  String toString() {
    return 'HomeEvent.postsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PostsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() postsFetched,
    required TResult Function() carouselsFetched,
    required TResult Function(String id) postLiked,
  }) {
    return postsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? postsFetched,
    TResult? Function()? carouselsFetched,
    TResult? Function(String id)? postLiked,
  }) {
    return postsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? postsFetched,
    TResult Function()? carouselsFetched,
    TResult Function(String id)? postLiked,
    required TResult orElse(),
  }) {
    if (postsFetched != null) {
      return postsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostsFetched value) postsFetched,
    required TResult Function(_CarouselsFetched value) carouselsFetched,
    required TResult Function(_PostLiked value) postLiked,
  }) {
    return postsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostsFetched value)? postsFetched,
    TResult? Function(_CarouselsFetched value)? carouselsFetched,
    TResult? Function(_PostLiked value)? postLiked,
  }) {
    return postsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostsFetched value)? postsFetched,
    TResult Function(_CarouselsFetched value)? carouselsFetched,
    TResult Function(_PostLiked value)? postLiked,
    required TResult orElse(),
  }) {
    if (postsFetched != null) {
      return postsFetched(this);
    }
    return orElse();
  }
}

abstract class _PostsFetched implements HomeEvent {
  const factory _PostsFetched() = _$_PostsFetched;
}

/// @nodoc
abstract class _$$_CarouselsFetchedCopyWith<$Res> {
  factory _$$_CarouselsFetchedCopyWith(
          _$_CarouselsFetched value, $Res Function(_$_CarouselsFetched) then) =
      __$$_CarouselsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CarouselsFetchedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_CarouselsFetched>
    implements _$$_CarouselsFetchedCopyWith<$Res> {
  __$$_CarouselsFetchedCopyWithImpl(
      _$_CarouselsFetched _value, $Res Function(_$_CarouselsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CarouselsFetched implements _CarouselsFetched {
  const _$_CarouselsFetched();

  @override
  String toString() {
    return 'HomeEvent.carouselsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CarouselsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() postsFetched,
    required TResult Function() carouselsFetched,
    required TResult Function(String id) postLiked,
  }) {
    return carouselsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? postsFetched,
    TResult? Function()? carouselsFetched,
    TResult? Function(String id)? postLiked,
  }) {
    return carouselsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? postsFetched,
    TResult Function()? carouselsFetched,
    TResult Function(String id)? postLiked,
    required TResult orElse(),
  }) {
    if (carouselsFetched != null) {
      return carouselsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostsFetched value) postsFetched,
    required TResult Function(_CarouselsFetched value) carouselsFetched,
    required TResult Function(_PostLiked value) postLiked,
  }) {
    return carouselsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostsFetched value)? postsFetched,
    TResult? Function(_CarouselsFetched value)? carouselsFetched,
    TResult? Function(_PostLiked value)? postLiked,
  }) {
    return carouselsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostsFetched value)? postsFetched,
    TResult Function(_CarouselsFetched value)? carouselsFetched,
    TResult Function(_PostLiked value)? postLiked,
    required TResult orElse(),
  }) {
    if (carouselsFetched != null) {
      return carouselsFetched(this);
    }
    return orElse();
  }
}

abstract class _CarouselsFetched implements HomeEvent {
  const factory _CarouselsFetched() = _$_CarouselsFetched;
}

/// @nodoc
abstract class _$$_PostLikedCopyWith<$Res> {
  factory _$$_PostLikedCopyWith(
          _$_PostLiked value, $Res Function(_$_PostLiked) then) =
      __$$_PostLikedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_PostLikedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_PostLiked>
    implements _$$_PostLikedCopyWith<$Res> {
  __$$_PostLikedCopyWithImpl(
      _$_PostLiked _value, $Res Function(_$_PostLiked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PostLiked(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostLiked implements _PostLiked {
  const _$_PostLiked({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.postLiked(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostLiked &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostLikedCopyWith<_$_PostLiked> get copyWith =>
      __$$_PostLikedCopyWithImpl<_$_PostLiked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() postsFetched,
    required TResult Function() carouselsFetched,
    required TResult Function(String id) postLiked,
  }) {
    return postLiked(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? postsFetched,
    TResult? Function()? carouselsFetched,
    TResult? Function(String id)? postLiked,
  }) {
    return postLiked?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? postsFetched,
    TResult Function()? carouselsFetched,
    TResult Function(String id)? postLiked,
    required TResult orElse(),
  }) {
    if (postLiked != null) {
      return postLiked(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostsFetched value) postsFetched,
    required TResult Function(_CarouselsFetched value) carouselsFetched,
    required TResult Function(_PostLiked value) postLiked,
  }) {
    return postLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostsFetched value)? postsFetched,
    TResult? Function(_CarouselsFetched value)? carouselsFetched,
    TResult? Function(_PostLiked value)? postLiked,
  }) {
    return postLiked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostsFetched value)? postsFetched,
    TResult Function(_CarouselsFetched value)? carouselsFetched,
    TResult Function(_PostLiked value)? postLiked,
    required TResult orElse(),
  }) {
    if (postLiked != null) {
      return postLiked(this);
    }
    return orElse();
  }
}

abstract class _PostLiked implements HomeEvent {
  const factory _PostLiked({required final String id}) = _$_PostLiked;

  String get id;
  @JsonKey(ignore: true)
  _$$_PostLikedCopyWith<_$_PostLiked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<HomeFailure, List<HomeCarouselObject>>>
      get failureOrCarouselObjectsOption => throw _privateConstructorUsedError;
  Option<Either<HomeFailure, List<PostObject>>> get failureOrPostsOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<HomeFailure, List<HomeCarouselObject>>>
          failureOrCarouselObjectsOption,
      Option<Either<HomeFailure, List<PostObject>>> failureOrPostsOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrCarouselObjectsOption = null,
    Object? failureOrPostsOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrCarouselObjectsOption: null == failureOrCarouselObjectsOption
          ? _value.failureOrCarouselObjectsOption
          : failureOrCarouselObjectsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeFailure, List<HomeCarouselObject>>>,
      failureOrPostsOption: null == failureOrPostsOption
          ? _value.failureOrPostsOption
          : failureOrPostsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeFailure, List<PostObject>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<HomeFailure, List<HomeCarouselObject>>>
          failureOrCarouselObjectsOption,
      Option<Either<HomeFailure, List<PostObject>>> failureOrPostsOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrCarouselObjectsOption = null,
    Object? failureOrPostsOption = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrCarouselObjectsOption: null == failureOrCarouselObjectsOption
          ? _value.failureOrCarouselObjectsOption
          : failureOrCarouselObjectsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeFailure, List<HomeCarouselObject>>>,
      failureOrPostsOption: null == failureOrPostsOption
          ? _value.failureOrPostsOption
          : failureOrPostsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeFailure, List<PostObject>>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required this.failureOrCarouselObjectsOption,
      required this.failureOrPostsOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<HomeFailure, List<HomeCarouselObject>>>
      failureOrCarouselObjectsOption;
  @override
  final Option<Either<HomeFailure, List<PostObject>>> failureOrPostsOption;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, failureOrCarouselObjectsOption: $failureOrCarouselObjectsOption, failureOrPostsOption: $failureOrPostsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrCarouselObjectsOption,
                    failureOrCarouselObjectsOption) ||
                other.failureOrCarouselObjectsOption ==
                    failureOrCarouselObjectsOption) &&
            (identical(other.failureOrPostsOption, failureOrPostsOption) ||
                other.failureOrPostsOption == failureOrPostsOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      failureOrCarouselObjectsOption, failureOrPostsOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final Option<Either<HomeFailure, List<HomeCarouselObject>>>
          failureOrCarouselObjectsOption,
      required final Option<Either<HomeFailure, List<PostObject>>>
          failureOrPostsOption}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  Option<Either<HomeFailure, List<HomeCarouselObject>>>
      get failureOrCarouselObjectsOption;
  @override
  Option<Either<HomeFailure, List<PostObject>>> get failureOrPostsOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
