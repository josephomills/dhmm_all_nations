// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionEvent {
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) bookOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? bookOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? bookOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookOpened value) bookOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookOpened value)? bookOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookOpened value)? bookOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionEventCopyWith<CollectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionEventCopyWith<$Res> {
  factory $CollectionEventCopyWith(
          CollectionEvent value, $Res Function(CollectionEvent) then) =
      _$CollectionEventCopyWithImpl<$Res, CollectionEvent>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$CollectionEventCopyWithImpl<$Res, $Val extends CollectionEvent>
    implements $CollectionEventCopyWith<$Res> {
  _$CollectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookOpenedCopyWith<$Res>
    implements $CollectionEventCopyWith<$Res> {
  factory _$$_BookOpenedCopyWith(
          _$_BookOpened value, $Res Function(_$_BookOpened) then) =
      __$$_BookOpenedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_BookOpenedCopyWithImpl<$Res>
    extends _$CollectionEventCopyWithImpl<$Res, _$_BookOpened>
    implements _$$_BookOpenedCopyWith<$Res> {
  __$$_BookOpenedCopyWithImpl(
      _$_BookOpened _value, $Res Function(_$_BookOpened) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_BookOpened(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BookOpened implements _BookOpened {
  const _$_BookOpened({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'CollectionEvent.bookOpened(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookOpened &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookOpenedCopyWith<_$_BookOpened> get copyWith =>
      __$$_BookOpenedCopyWithImpl<_$_BookOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) bookOpened,
  }) {
    return bookOpened(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? bookOpened,
  }) {
    return bookOpened?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? bookOpened,
    required TResult orElse(),
  }) {
    if (bookOpened != null) {
      return bookOpened(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookOpened value) bookOpened,
  }) {
    return bookOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookOpened value)? bookOpened,
  }) {
    return bookOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookOpened value)? bookOpened,
    required TResult orElse(),
  }) {
    if (bookOpened != null) {
      return bookOpened(this);
    }
    return orElse();
  }
}

abstract class _BookOpened implements CollectionEvent {
  const factory _BookOpened({required final String url}) = _$_BookOpened;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_BookOpenedCopyWith<_$_BookOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectionState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionStateCopyWith<CollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionStateCopyWith<$Res> {
  factory $CollectionStateCopyWith(
          CollectionState value, $Res Function(CollectionState) then) =
      _$CollectionStateCopyWithImpl<$Res, CollectionState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$CollectionStateCopyWithImpl<$Res, $Val extends CollectionState>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionStateCopyWith<$Res>
    implements $CollectionStateCopyWith<$Res> {
  factory _$$_CollectionStateCopyWith(
          _$_CollectionState value, $Res Function(_$_CollectionState) then) =
      __$$_CollectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_CollectionStateCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$_CollectionState>
    implements _$$_CollectionStateCopyWith<$Res> {
  __$$_CollectionStateCopyWithImpl(
      _$_CollectionState _value, $Res Function(_$_CollectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_CollectionState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CollectionState implements _CollectionState {
  const _$_CollectionState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CollectionState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionStateCopyWith<_$_CollectionState> get copyWith =>
      __$$_CollectionStateCopyWithImpl<_$_CollectionState>(this, _$identity);
}

abstract class _CollectionState implements CollectionState {
  const factory _CollectionState({required final bool isLoading}) =
      _$_CollectionState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionStateCopyWith<_$_CollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
