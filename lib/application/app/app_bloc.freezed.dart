// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function(String? translatedTo) translatedToLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function(String? translatedTo)? translatedToLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function(String? translatedTo)? translatedToLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_TranslatedToLanguage value) translatedToLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_TranslatedToLanguage value)? translatedToLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_TranslatedToLanguage value)? translatedToLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

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
    extends _$AppEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
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
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function(String? translatedTo) translatedToLanguage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function(String? translatedTo)? translatedToLanguage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function(String? translatedTo)? translatedToLanguage,
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
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_TranslatedToLanguage value) translatedToLanguage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_TranslatedToLanguage value)? translatedToLanguage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_TranslatedToLanguage value)? translatedToLanguage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ThemeModeToggledCopyWith<$Res> {
  factory _$$_ThemeModeToggledCopyWith(
          _$_ThemeModeToggled value, $Res Function(_$_ThemeModeToggled) then) =
      __$$_ThemeModeToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_ThemeModeToggledCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_ThemeModeToggled>
    implements _$$_ThemeModeToggledCopyWith<$Res> {
  __$$_ThemeModeToggledCopyWithImpl(
      _$_ThemeModeToggled _value, $Res Function(_$_ThemeModeToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$_ThemeModeToggled(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ThemeModeToggled implements _ThemeModeToggled {
  const _$_ThemeModeToggled({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppEvent.themeModeToggled(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeModeToggled &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeModeToggledCopyWith<_$_ThemeModeToggled> get copyWith =>
      __$$_ThemeModeToggledCopyWithImpl<_$_ThemeModeToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function(String? translatedTo) translatedToLanguage,
  }) {
    return themeModeToggled(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function(String? translatedTo)? translatedToLanguage,
  }) {
    return themeModeToggled?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function(String? translatedTo)? translatedToLanguage,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_TranslatedToLanguage value) translatedToLanguage,
  }) {
    return themeModeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_TranslatedToLanguage value)? translatedToLanguage,
  }) {
    return themeModeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_TranslatedToLanguage value)? translatedToLanguage,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeToggled implements AppEvent {
  const factory _ThemeModeToggled({required final ThemeMode themeMode}) =
      _$_ThemeModeToggled;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$_ThemeModeToggledCopyWith<_$_ThemeModeToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TranslatedToLanguageCopyWith<$Res> {
  factory _$$_TranslatedToLanguageCopyWith(_$_TranslatedToLanguage value,
          $Res Function(_$_TranslatedToLanguage) then) =
      __$$_TranslatedToLanguageCopyWithImpl<$Res>;
  @useResult
  $Res call({String? translatedTo});
}

/// @nodoc
class __$$_TranslatedToLanguageCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_TranslatedToLanguage>
    implements _$$_TranslatedToLanguageCopyWith<$Res> {
  __$$_TranslatedToLanguageCopyWithImpl(_$_TranslatedToLanguage _value,
      $Res Function(_$_TranslatedToLanguage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatedTo = freezed,
  }) {
    return _then(_$_TranslatedToLanguage(
      translatedTo: freezed == translatedTo
          ? _value.translatedTo
          : translatedTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TranslatedToLanguage implements _TranslatedToLanguage {
  const _$_TranslatedToLanguage({this.translatedTo});

  @override
  final String? translatedTo;

  @override
  String toString() {
    return 'AppEvent.translatedToLanguage(translatedTo: $translatedTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TranslatedToLanguage &&
            (identical(other.translatedTo, translatedTo) ||
                other.translatedTo == translatedTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, translatedTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslatedToLanguageCopyWith<_$_TranslatedToLanguage> get copyWith =>
      __$$_TranslatedToLanguageCopyWithImpl<_$_TranslatedToLanguage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function(String? translatedTo) translatedToLanguage,
  }) {
    return translatedToLanguage(translatedTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function(String? translatedTo)? translatedToLanguage,
  }) {
    return translatedToLanguage?.call(translatedTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function(String? translatedTo)? translatedToLanguage,
    required TResult orElse(),
  }) {
    if (translatedToLanguage != null) {
      return translatedToLanguage(translatedTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_TranslatedToLanguage value) translatedToLanguage,
  }) {
    return translatedToLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_TranslatedToLanguage value)? translatedToLanguage,
  }) {
    return translatedToLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_TranslatedToLanguage value)? translatedToLanguage,
    required TResult orElse(),
  }) {
    if (translatedToLanguage != null) {
      return translatedToLanguage(this);
    }
    return orElse();
  }
}

abstract class _TranslatedToLanguage implements AppEvent {
  const factory _TranslatedToLanguage({final String? translatedTo}) =
      _$_TranslatedToLanguage;

  String? get translatedTo;
  @JsonKey(ignore: true)
  _$$_TranslatedToLanguageCopyWith<_$_TranslatedToLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  bool get isLoading => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get translateTo => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {bool isLoading, ThemeMode themeMode, String translateTo, String flag});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? themeMode = null,
    Object? translateTo = null,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      translateTo: null == translateTo
          ? _value.translateTo
          : translateTo // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, ThemeMode themeMode, String translateTo, String flag});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? themeMode = null,
    Object? translateTo = null,
    Object? flag = null,
  }) {
    return _then(_$_AppState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      translateTo: null == translateTo
          ? _value.translateTo
          : translateTo // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {this.isLoading = false,
      this.themeMode = ThemeMode.system,
      this.translateTo = "en",
      this.flag = "gh"});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final String translateTo;
  @override
  @JsonKey()
  final String flag;

  @override
  String toString() {
    return 'AppState(isLoading: $isLoading, themeMode: $themeMode, translateTo: $translateTo, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.translateTo, translateTo) ||
                other.translateTo == translateTo) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, themeMode, translateTo, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final bool isLoading,
      final ThemeMode themeMode,
      final String translateTo,
      final String flag}) = _$_AppState;

  @override
  bool get isLoading;
  @override
  ThemeMode get themeMode;
  @override
  String get translateTo;
  @override
  String get flag;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
