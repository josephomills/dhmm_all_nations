// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FirstnameChangedCopyWith<$Res> {
  factory _$$_FirstnameChangedCopyWith(
          _$_FirstnameChanged value, $Res Function(_$_FirstnameChanged) then) =
      __$$_FirstnameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstname});
}

/// @nodoc
class __$$_FirstnameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_FirstnameChanged>
    implements _$$_FirstnameChangedCopyWith<$Res> {
  __$$_FirstnameChangedCopyWithImpl(
      _$_FirstnameChanged _value, $Res Function(_$_FirstnameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
  }) {
    return _then(_$_FirstnameChanged(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstnameChanged implements _FirstnameChanged {
  const _$_FirstnameChanged({required this.firstname});

  @override
  final String firstname;

  @override
  String toString() {
    return 'RegisterEvent.firstnameChanged(firstname: $firstname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstnameChanged &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstnameChangedCopyWith<_$_FirstnameChanged> get copyWith =>
      __$$_FirstnameChangedCopyWithImpl<_$_FirstnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return firstnameChanged(firstname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return firstnameChanged?.call(firstname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (firstnameChanged != null) {
      return firstnameChanged(firstname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return firstnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return firstnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (firstnameChanged != null) {
      return firstnameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstnameChanged implements RegisterEvent {
  const factory _FirstnameChanged({required final String firstname}) =
      _$_FirstnameChanged;

  String get firstname;
  @JsonKey(ignore: true)
  _$$_FirstnameChangedCopyWith<_$_FirstnameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastnameChangedCopyWith<$Res> {
  factory _$$_LastnameChangedCopyWith(
          _$_LastnameChanged value, $Res Function(_$_LastnameChanged) then) =
      __$$_LastnameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastname});
}

/// @nodoc
class __$$_LastnameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_LastnameChanged>
    implements _$$_LastnameChangedCopyWith<$Res> {
  __$$_LastnameChangedCopyWithImpl(
      _$_LastnameChanged _value, $Res Function(_$_LastnameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastname = null,
  }) {
    return _then(_$_LastnameChanged(
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastnameChanged implements _LastnameChanged {
  const _$_LastnameChanged({required this.lastname});

  @override
  final String lastname;

  @override
  String toString() {
    return 'RegisterEvent.lastnameChanged(lastname: $lastname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastnameChanged &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastnameChangedCopyWith<_$_LastnameChanged> get copyWith =>
      __$$_LastnameChangedCopyWithImpl<_$_LastnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return lastnameChanged(lastname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return lastnameChanged?.call(lastname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (lastnameChanged != null) {
      return lastnameChanged(lastname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return lastnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return lastnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (lastnameChanged != null) {
      return lastnameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastnameChanged implements RegisterEvent {
  const factory _LastnameChanged({required final String lastname}) =
      _$_LastnameChanged;

  String get lastname;
  @JsonKey(ignore: true)
  _$$_LastnameChangedCopyWith<_$_LastnameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterEvent {
  const factory _EmailChanged({required final String email}) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_countryFirstnameChangedCopyWith<$Res> {
  factory _$$_countryFirstnameChangedCopyWith(_$_countryFirstnameChanged value,
          $Res Function(_$_countryFirstnameChanged) then) =
      __$$_countryFirstnameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({CountryCode countryCode});
}

/// @nodoc
class __$$_countryFirstnameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_countryFirstnameChanged>
    implements _$$_countryFirstnameChangedCopyWith<$Res> {
  __$$_countryFirstnameChangedCopyWithImpl(_$_countryFirstnameChanged _value,
      $Res Function(_$_countryFirstnameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
  }) {
    return _then(_$_countryFirstnameChanged(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
    ));
  }
}

/// @nodoc

class _$_countryFirstnameChanged implements _countryFirstnameChanged {
  const _$_countryFirstnameChanged({required this.countryCode});

  @override
  final CountryCode countryCode;

  @override
  String toString() {
    return 'RegisterEvent.countryChanged(countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_countryFirstnameChanged &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_countryFirstnameChangedCopyWith<_$_countryFirstnameChanged>
      get copyWith =>
          __$$_countryFirstnameChangedCopyWithImpl<_$_countryFirstnameChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return countryChanged(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return countryChanged?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return countryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(this);
    }
    return orElse();
  }
}

abstract class _countryFirstnameChanged implements RegisterEvent {
  const factory _countryFirstnameChanged(
      {required final CountryCode countryCode}) = _$_countryFirstnameChanged;

  CountryCode get countryCode;
  @JsonKey(ignore: true)
  _$$_countryFirstnameChangedCopyWith<_$_countryFirstnameChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CountryChangedCopyWith<$Res> {
  factory _$$_CountryChangedCopyWith(
          _$_CountryChanged value, $Res Function(_$_CountryChanged) then) =
      __$$_CountryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String church});
}

/// @nodoc
class __$$_CountryChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_CountryChanged>
    implements _$$_CountryChangedCopyWith<$Res> {
  __$$_CountryChangedCopyWithImpl(
      _$_CountryChanged _value, $Res Function(_$_CountryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? church = null,
  }) {
    return _then(_$_CountryChanged(
      church: null == church
          ? _value.church
          : church // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CountryChanged implements _CountryChanged {
  const _$_CountryChanged({required this.church});

  @override
  final String church;

  @override
  String toString() {
    return 'RegisterEvent.churchChanged(church: $church)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryChanged &&
            (identical(other.church, church) || other.church == church));
  }

  @override
  int get hashCode => Object.hash(runtimeType, church);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryChangedCopyWith<_$_CountryChanged> get copyWith =>
      __$$_CountryChangedCopyWithImpl<_$_CountryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return churchChanged(church);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return churchChanged?.call(church);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (churchChanged != null) {
      return churchChanged(church);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return churchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return churchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (churchChanged != null) {
      return churchChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryChanged implements RegisterEvent {
  const factory _CountryChanged({required final String church}) =
      _$_CountryChanged;

  String get church;
  @JsonKey(ignore: true)
  _$$_CountryChangedCopyWith<_$_CountryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CountryDialogToggledCopyWith<$Res> {
  factory _$$_CountryDialogToggledCopyWith(_$_CountryDialogToggled value,
          $Res Function(_$_CountryDialogToggled) then) =
      __$$_CountryDialogToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountryDialogToggledCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_CountryDialogToggled>
    implements _$$_CountryDialogToggledCopyWith<$Res> {
  __$$_CountryDialogToggledCopyWithImpl(_$_CountryDialogToggled _value,
      $Res Function(_$_CountryDialogToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CountryDialogToggled implements _CountryDialogToggled {
  const _$_CountryDialogToggled();

  @override
  String toString() {
    return 'RegisterEvent.countryDialogToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CountryDialogToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return countryDialogToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return countryDialogToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (countryDialogToggled != null) {
      return countryDialogToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return countryDialogToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return countryDialogToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (countryDialogToggled != null) {
      return countryDialogToggled(this);
    }
    return orElse();
  }
}

abstract class _CountryDialogToggled implements RegisterEvent {
  const factory _CountryDialogToggled() = _$_CountryDialogToggled;
}

/// @nodoc
abstract class _$$_RegisterButtonPressedCopyWith<$Res> {
  factory _$$_RegisterButtonPressedCopyWith(_$_RegisterButtonPressed value,
          $Res Function(_$_RegisterButtonPressed) then) =
      __$$_RegisterButtonPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalKey<FormState> formKey});
}

/// @nodoc
class __$$_RegisterButtonPressedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_RegisterButtonPressed>
    implements _$$_RegisterButtonPressedCopyWith<$Res> {
  __$$_RegisterButtonPressedCopyWithImpl(_$_RegisterButtonPressed _value,
      $Res Function(_$_RegisterButtonPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$_RegisterButtonPressed(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$_RegisterButtonPressed implements _RegisterButtonPressed {
  const _$_RegisterButtonPressed({required this.formKey});

  @override
  final GlobalKey<FormState> formKey;

  @override
  String toString() {
    return 'RegisterEvent.registerButtonPressed(formKey: $formKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterButtonPressed &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterButtonPressedCopyWith<_$_RegisterButtonPressed> get copyWith =>
      __$$_RegisterButtonPressedCopyWithImpl<_$_RegisterButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(CountryCode countryCode) countryChanged,
    required TResult Function(String church) churchChanged,
    required TResult Function() countryDialogToggled,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return registerButtonPressed(formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(CountryCode countryCode)? countryChanged,
    TResult? Function(String church)? churchChanged,
    TResult? Function()? countryDialogToggled,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return registerButtonPressed?.call(formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(CountryCode countryCode)? countryChanged,
    TResult Function(String church)? churchChanged,
    TResult Function()? countryDialogToggled,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (registerButtonPressed != null) {
      return registerButtonPressed(formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstnameChanged value) firstnameChanged,
    required TResult Function(_LastnameChanged value) lastnameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_countryFirstnameChanged value) countryChanged,
    required TResult Function(_CountryChanged value) churchChanged,
    required TResult Function(_CountryDialogToggled value) countryDialogToggled,
    required TResult Function(_RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return registerButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstnameChanged value)? firstnameChanged,
    TResult? Function(_LastnameChanged value)? lastnameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_countryFirstnameChanged value)? countryChanged,
    TResult? Function(_CountryChanged value)? churchChanged,
    TResult? Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult? Function(_RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return registerButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstnameChanged value)? firstnameChanged,
    TResult Function(_LastnameChanged value)? lastnameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_countryFirstnameChanged value)? countryChanged,
    TResult Function(_CountryChanged value)? churchChanged,
    TResult Function(_CountryDialogToggled value)? countryDialogToggled,
    TResult Function(_RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (registerButtonPressed != null) {
      return registerButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterButtonPressed implements RegisterEvent {
  const factory _RegisterButtonPressed(
      {required final GlobalKey<FormState> formKey}) = _$_RegisterButtonPressed;

  GlobalKey<FormState> get formKey;
  @JsonKey(ignore: true)
  _$$_RegisterButtonPressedCopyWith<_$_RegisterButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  CountryCode get countryCode => throw _privateConstructorUsedError;
  String get church => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validateFields => throw _privateConstructorUsedError;
  bool get showCountryDialog => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, UserModel>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      CountryCode countryCode,
      String church,
      String email,
      bool isLoading,
      bool validateFields,
      bool showCountryDialog,
      Option<Either<AuthFailure, UserModel>> failureOrSuccessOption});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? countryCode = null,
    Object? church = null,
    Object? email = null,
    Object? isLoading = null,
    Object? validateFields = null,
    Object? showCountryDialog = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      church: null == church
          ? _value.church
          : church // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFields: null == validateFields
          ? _value.validateFields
          : validateFields // ignore: cast_nullable_to_non_nullable
              as bool,
      showCountryDialog: null == showCountryDialog
          ? _value.showCountryDialog
          : showCountryDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, UserModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      CountryCode countryCode,
      String church,
      String email,
      bool isLoading,
      bool validateFields,
      bool showCountryDialog,
      Option<Either<AuthFailure, UserModel>> failureOrSuccessOption});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? countryCode = null,
    Object? church = null,
    Object? email = null,
    Object? isLoading = null,
    Object? validateFields = null,
    Object? showCountryDialog = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_RegisterState(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      church: null == church
          ? _value.church
          : church // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFields: null == validateFields
          ? _value.validateFields
          : validateFields // ignore: cast_nullable_to_non_nullable
              as bool,
      showCountryDialog: null == showCountryDialog
          ? _value.showCountryDialog
          : showCountryDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, UserModel>>,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {required this.firstname,
      required this.lastname,
      required this.countryCode,
      required this.church,
      required this.email,
      required this.isLoading,
      required this.validateFields,
      required this.showCountryDialog,
      required this.failureOrSuccessOption});

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final CountryCode countryCode;
  @override
  final String church;
  @override
  final String email;
  @override
  final bool isLoading;
  @override
  final bool validateFields;
  @override
  final bool showCountryDialog;
  @override
  final Option<Either<AuthFailure, UserModel>> failureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterState(firstname: $firstname, lastname: $lastname, countryCode: $countryCode, church: $church, email: $email, isLoading: $isLoading, validateFields: $validateFields, showCountryDialog: $showCountryDialog, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.church, church) || other.church == church) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validateFields, validateFields) ||
                other.validateFields == validateFields) &&
            (identical(other.showCountryDialog, showCountryDialog) ||
                other.showCountryDialog == showCountryDialog) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstname,
      lastname,
      countryCode,
      church,
      email,
      isLoading,
      validateFields,
      showCountryDialog,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required final String firstname,
      required final String lastname,
      required final CountryCode countryCode,
      required final String church,
      required final String email,
      required final bool isLoading,
      required final bool validateFields,
      required final bool showCountryDialog,
      required final Option<Either<AuthFailure, UserModel>>
          failureOrSuccessOption}) = _$_RegisterState;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  CountryCode get countryCode;
  @override
  String get church;
  @override
  String get email;
  @override
  bool get isLoading;
  @override
  bool get validateFields;
  @override
  bool get showCountryDialog;
  @override
  Option<Either<AuthFailure, UserModel>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
