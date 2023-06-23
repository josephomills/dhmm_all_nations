// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conference_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConferenceEvent {
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
abstract class $ConferenceEventCopyWith<$Res> {
  factory $ConferenceEventCopyWith(
          ConferenceEvent value, $Res Function(ConferenceEvent) then) =
      _$ConferenceEventCopyWithImpl<$Res, ConferenceEvent>;
}

/// @nodoc
class _$ConferenceEventCopyWithImpl<$Res, $Val extends ConferenceEvent>
    implements $ConferenceEventCopyWith<$Res> {
  _$ConferenceEventCopyWithImpl(this._value, this._then);

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
    extends _$ConferenceEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ConferenceEvent.started()';
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

abstract class _Started implements ConferenceEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$ConferenceState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ConferenceObject> get conferences => throw _privateConstructorUsedError;
  Option<Either<ConferenceFailure, List<ConferenceObject>>>
      get failureOrConferencesOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConferenceStateCopyWith<ConferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceStateCopyWith<$Res> {
  factory $ConferenceStateCopyWith(
          ConferenceState value, $Res Function(ConferenceState) then) =
      _$ConferenceStateCopyWithImpl<$Res, ConferenceState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ConferenceObject> conferences,
      Option<Either<ConferenceFailure, List<ConferenceObject>>>
          failureOrConferencesOption});
}

/// @nodoc
class _$ConferenceStateCopyWithImpl<$Res, $Val extends ConferenceState>
    implements $ConferenceStateCopyWith<$Res> {
  _$ConferenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? conferences = null,
    Object? failureOrConferencesOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      conferences: null == conferences
          ? _value.conferences
          : conferences // ignore: cast_nullable_to_non_nullable
              as List<ConferenceObject>,
      failureOrConferencesOption: null == failureOrConferencesOption
          ? _value.failureOrConferencesOption
          : failureOrConferencesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConferenceFailure, List<ConferenceObject>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConferenceStateCopyWith<$Res>
    implements $ConferenceStateCopyWith<$Res> {
  factory _$$_ConferenceStateCopyWith(
          _$_ConferenceState value, $Res Function(_$_ConferenceState) then) =
      __$$_ConferenceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ConferenceObject> conferences,
      Option<Either<ConferenceFailure, List<ConferenceObject>>>
          failureOrConferencesOption});
}

/// @nodoc
class __$$_ConferenceStateCopyWithImpl<$Res>
    extends _$ConferenceStateCopyWithImpl<$Res, _$_ConferenceState>
    implements _$$_ConferenceStateCopyWith<$Res> {
  __$$_ConferenceStateCopyWithImpl(
      _$_ConferenceState _value, $Res Function(_$_ConferenceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? conferences = null,
    Object? failureOrConferencesOption = null,
  }) {
    return _then(_$_ConferenceState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      conferences: null == conferences
          ? _value._conferences
          : conferences // ignore: cast_nullable_to_non_nullable
              as List<ConferenceObject>,
      failureOrConferencesOption: null == failureOrConferencesOption
          ? _value.failureOrConferencesOption
          : failureOrConferencesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConferenceFailure, List<ConferenceObject>>>,
    ));
  }
}

/// @nodoc

class _$_ConferenceState implements _ConferenceState {
  const _$_ConferenceState(
      {required this.isLoading,
      required final List<ConferenceObject> conferences,
      required this.failureOrConferencesOption})
      : _conferences = conferences;

  @override
  final bool isLoading;
  final List<ConferenceObject> _conferences;
  @override
  List<ConferenceObject> get conferences {
    if (_conferences is EqualUnmodifiableListView) return _conferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conferences);
  }

  @override
  final Option<Either<ConferenceFailure, List<ConferenceObject>>>
      failureOrConferencesOption;

  @override
  String toString() {
    return 'ConferenceState(isLoading: $isLoading, conferences: $conferences, failureOrConferencesOption: $failureOrConferencesOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConferenceState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._conferences, _conferences) &&
            (identical(other.failureOrConferencesOption,
                    failureOrConferencesOption) ||
                other.failureOrConferencesOption ==
                    failureOrConferencesOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_conferences),
      failureOrConferencesOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConferenceStateCopyWith<_$_ConferenceState> get copyWith =>
      __$$_ConferenceStateCopyWithImpl<_$_ConferenceState>(this, _$identity);
}

abstract class _ConferenceState implements ConferenceState {
  const factory _ConferenceState(
      {required final bool isLoading,
      required final List<ConferenceObject> conferences,
      required final Option<Either<ConferenceFailure, List<ConferenceObject>>>
          failureOrConferencesOption}) = _$_ConferenceState;

  @override
  bool get isLoading;
  @override
  List<ConferenceObject> get conferences;
  @override
  Option<Either<ConferenceFailure, List<ConferenceObject>>>
      get failureOrConferencesOption;
  @override
  @JsonKey(ignore: true)
  _$$_ConferenceStateCopyWith<_$_ConferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}
