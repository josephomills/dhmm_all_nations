// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) bookOpened,
    required TResult Function() booksFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? bookOpened,
    TResult? Function()? booksFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? bookOpened,
    TResult Function()? booksFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookOpened value) bookOpened,
    required TResult Function(_BooksFetched value) booksFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookOpened value)? bookOpened,
    TResult? Function(_BooksFetched value)? booksFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookOpened value)? bookOpened,
    TResult Function(_BooksFetched value)? booksFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksEventCopyWith<$Res> {
  factory $BooksEventCopyWith(
          BooksEvent value, $Res Function(BooksEvent) then) =
      _$BooksEventCopyWithImpl<$Res, BooksEvent>;
}

/// @nodoc
class _$BooksEventCopyWithImpl<$Res, $Val extends BooksEvent>
    implements $BooksEventCopyWith<$Res> {
  _$BooksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BookOpenedCopyWith<$Res> {
  factory _$$_BookOpenedCopyWith(
          _$_BookOpened value, $Res Function(_$_BookOpened) then) =
      __$$_BookOpenedCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_BookOpenedCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$_BookOpened>
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
    return 'BooksEvent.bookOpened(url: $url)';
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
    required TResult Function() booksFetched,
  }) {
    return bookOpened(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? bookOpened,
    TResult? Function()? booksFetched,
  }) {
    return bookOpened?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? bookOpened,
    TResult Function()? booksFetched,
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
    required TResult Function(_BooksFetched value) booksFetched,
  }) {
    return bookOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookOpened value)? bookOpened,
    TResult? Function(_BooksFetched value)? booksFetched,
  }) {
    return bookOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookOpened value)? bookOpened,
    TResult Function(_BooksFetched value)? booksFetched,
    required TResult orElse(),
  }) {
    if (bookOpened != null) {
      return bookOpened(this);
    }
    return orElse();
  }
}

abstract class _BookOpened implements BooksEvent {
  const factory _BookOpened({required final String url}) = _$_BookOpened;

  String get url;
  @JsonKey(ignore: true)
  _$$_BookOpenedCopyWith<_$_BookOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BooksFetchedCopyWith<$Res> {
  factory _$$_BooksFetchedCopyWith(
          _$_BooksFetched value, $Res Function(_$_BooksFetched) then) =
      __$$_BooksFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BooksFetchedCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$_BooksFetched>
    implements _$$_BooksFetchedCopyWith<$Res> {
  __$$_BooksFetchedCopyWithImpl(
      _$_BooksFetched _value, $Res Function(_$_BooksFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BooksFetched implements _BooksFetched {
  const _$_BooksFetched();

  @override
  String toString() {
    return 'BooksEvent.booksFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BooksFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) bookOpened,
    required TResult Function() booksFetched,
  }) {
    return booksFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? bookOpened,
    TResult? Function()? booksFetched,
  }) {
    return booksFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? bookOpened,
    TResult Function()? booksFetched,
    required TResult orElse(),
  }) {
    if (booksFetched != null) {
      return booksFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookOpened value) bookOpened,
    required TResult Function(_BooksFetched value) booksFetched,
  }) {
    return booksFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookOpened value)? bookOpened,
    TResult? Function(_BooksFetched value)? booksFetched,
  }) {
    return booksFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookOpened value)? bookOpened,
    TResult Function(_BooksFetched value)? booksFetched,
    required TResult orElse(),
  }) {
    if (booksFetched != null) {
      return booksFetched(this);
    }
    return orElse();
  }
}

abstract class _BooksFetched implements BooksEvent {
  const factory _BooksFetched() = _$_BooksFetched;
}

/// @nodoc
mixin _$BooksState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<BooksFailure, List<BookObject>>> get booksOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksStateCopyWith<BooksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<BooksFailure, List<BookObject>>> booksOption});
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? booksOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      booksOption: null == booksOption
          ? _value.booksOption
          : booksOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BooksFailure, List<BookObject>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BooksStateCopyWith<$Res>
    implements $BooksStateCopyWith<$Res> {
  factory _$$_BooksStateCopyWith(
          _$_BooksState value, $Res Function(_$_BooksState) then) =
      __$$_BooksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<BooksFailure, List<BookObject>>> booksOption});
}

/// @nodoc
class __$$_BooksStateCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_BooksState>
    implements _$$_BooksStateCopyWith<$Res> {
  __$$_BooksStateCopyWithImpl(
      _$_BooksState _value, $Res Function(_$_BooksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? booksOption = null,
  }) {
    return _then(_$_BooksState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      booksOption: null == booksOption
          ? _value.booksOption
          : booksOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BooksFailure, List<BookObject>>>,
    ));
  }
}

/// @nodoc

class _$_BooksState implements _BooksState {
  const _$_BooksState({required this.isLoading, required this.booksOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<BooksFailure, List<BookObject>>> booksOption;

  @override
  String toString() {
    return 'BooksState(isLoading: $isLoading, booksOption: $booksOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.booksOption, booksOption) ||
                other.booksOption == booksOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, booksOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BooksStateCopyWith<_$_BooksState> get copyWith =>
      __$$_BooksStateCopyWithImpl<_$_BooksState>(this, _$identity);
}

abstract class _BooksState implements BooksState {
  const factory _BooksState(
      {required final bool isLoading,
      required final Option<Either<BooksFailure, List<BookObject>>>
          booksOption}) = _$_BooksState;

  @override
  bool get isLoading;
  @override
  Option<Either<BooksFailure, List<BookObject>>> get booksOption;
  @override
  @JsonKey(ignore: true)
  _$$_BooksStateCopyWith<_$_BooksState> get copyWith =>
      throw _privateConstructorUsedError;
}
