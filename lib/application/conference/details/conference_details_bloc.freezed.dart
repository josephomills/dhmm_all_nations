// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conference_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConferenceDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceDetailsEventCopyWith<$Res> {
  factory $ConferenceDetailsEventCopyWith(ConferenceDetailsEvent value,
          $Res Function(ConferenceDetailsEvent) then) =
      _$ConferenceDetailsEventCopyWithImpl<$Res, ConferenceDetailsEvent>;
}

/// @nodoc
class _$ConferenceDetailsEventCopyWithImpl<$Res,
        $Val extends ConferenceDetailsEvent>
    implements $ConferenceDetailsEventCopyWith<$Res> {
  _$ConferenceDetailsEventCopyWithImpl(this._value, this._then);

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
    extends _$ConferenceDetailsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ConferenceDetailsEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ConferenceDetailsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$ConferenceDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConferenceDetailsStateCopyWith<ConferenceDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceDetailsStateCopyWith<$Res> {
  factory $ConferenceDetailsStateCopyWith(ConferenceDetailsState value,
          $Res Function(ConferenceDetailsState) then) =
      _$ConferenceDetailsStateCopyWithImpl<$Res, ConferenceDetailsState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$ConferenceDetailsStateCopyWithImpl<$Res,
        $Val extends ConferenceDetailsState>
    implements $ConferenceDetailsStateCopyWith<$Res> {
  _$ConferenceDetailsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ConferenceDetailsStateCopyWith<$Res>
    implements $ConferenceDetailsStateCopyWith<$Res> {
  factory _$$_ConferenceDetailsStateCopyWith(_$_ConferenceDetailsState value,
          $Res Function(_$_ConferenceDetailsState) then) =
      __$$_ConferenceDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_ConferenceDetailsStateCopyWithImpl<$Res>
    extends _$ConferenceDetailsStateCopyWithImpl<$Res,
        _$_ConferenceDetailsState>
    implements _$$_ConferenceDetailsStateCopyWith<$Res> {
  __$$_ConferenceDetailsStateCopyWithImpl(_$_ConferenceDetailsState _value,
      $Res Function(_$_ConferenceDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_ConferenceDetailsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConferenceDetailsState implements _ConferenceDetailsState {
  const _$_ConferenceDetailsState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ConferenceDetailsState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConferenceDetailsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConferenceDetailsStateCopyWith<_$_ConferenceDetailsState> get copyWith =>
      __$$_ConferenceDetailsStateCopyWithImpl<_$_ConferenceDetailsState>(
          this, _$identity);
}

abstract class _ConferenceDetailsState implements ConferenceDetailsState {
  const factory _ConferenceDetailsState({required final bool isLoading}) =
      _$_ConferenceDetailsState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ConferenceDetailsStateCopyWith<_$_ConferenceDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
