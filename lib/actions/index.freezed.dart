// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetImagesTearOff {
  const _$GetImagesTearOff();

// ignore: unused_element
  GetImagesStart start(int page) {
    return GetImagesStart(
      page,
    );
  }

// ignore: unused_element
  GetImagesSuccessful successful(List<Img> images) {
    return GetImagesSuccessful(
      images,
    );
  }

// ignore: unused_element
  GetImagesError error(dynamic error) {
    return GetImagesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetImages = _$GetImagesTearOff();

/// @nodoc
mixin _$GetImages {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Img> images),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Img> images),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetImagesStart value),
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetImagesStart value),
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetImagesCopyWith<$Res> {
  factory $GetImagesCopyWith(GetImages value, $Res Function(GetImages) then) =
      _$GetImagesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetImagesCopyWithImpl<$Res> implements $GetImagesCopyWith<$Res> {
  _$GetImagesCopyWithImpl(this._value, this._then);

  final GetImages _value;
  // ignore: unused_field
  final $Res Function(GetImages) _then;
}

/// @nodoc
abstract class $GetImagesStartCopyWith<$Res> {
  factory $GetImagesStartCopyWith(
          GetImagesStart value, $Res Function(GetImagesStart) then) =
      _$GetImagesStartCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$GetImagesStartCopyWithImpl<$Res> extends _$GetImagesCopyWithImpl<$Res>
    implements $GetImagesStartCopyWith<$Res> {
  _$GetImagesStartCopyWithImpl(
      GetImagesStart _value, $Res Function(GetImagesStart) _then)
      : super(_value, (v) => _then(v as GetImagesStart));

  @override
  GetImagesStart get _value => super._value as GetImagesStart;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(GetImagesStart(
      page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$GetImagesStart implements GetImagesStart {
  const _$GetImagesStart(this.page) : assert(page != null);

  @override
  final int page;

  @override
  String toString() {
    return 'GetImages.start(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetImagesStart &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $GetImagesStartCopyWith<GetImagesStart> get copyWith =>
      _$GetImagesStartCopyWithImpl<GetImagesStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Img> images),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Img> images),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetImagesStart value),
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetImagesStart value),
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetImagesStart implements GetImages {
  const factory GetImagesStart(int page) = _$GetImagesStart;

  int get page;
  $GetImagesStartCopyWith<GetImagesStart> get copyWith;
}

/// @nodoc
abstract class $GetImagesSuccessfulCopyWith<$Res> {
  factory $GetImagesSuccessfulCopyWith(
          GetImagesSuccessful value, $Res Function(GetImagesSuccessful) then) =
      _$GetImagesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Img> images});
}

/// @nodoc
class _$GetImagesSuccessfulCopyWithImpl<$Res>
    extends _$GetImagesCopyWithImpl<$Res>
    implements $GetImagesSuccessfulCopyWith<$Res> {
  _$GetImagesSuccessfulCopyWithImpl(
      GetImagesSuccessful _value, $Res Function(GetImagesSuccessful) _then)
      : super(_value, (v) => _then(v as GetImagesSuccessful));

  @override
  GetImagesSuccessful get _value => super._value as GetImagesSuccessful;

  @override
  $Res call({
    Object images = freezed,
  }) {
    return _then(GetImagesSuccessful(
      images == freezed ? _value.images : images as List<Img>,
    ));
  }
}

/// @nodoc
class _$GetImagesSuccessful implements GetImagesSuccessful {
  const _$GetImagesSuccessful(this.images) : assert(images != null);

  @override
  final List<Img> images;

  @override
  String toString() {
    return 'GetImages.successful(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetImagesSuccessful &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @override
  $GetImagesSuccessfulCopyWith<GetImagesSuccessful> get copyWith =>
      _$GetImagesSuccessfulCopyWithImpl<GetImagesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Img> images),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(images);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Img> images),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetImagesStart value),
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetImagesStart value),
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetImagesSuccessful implements GetImages {
  const factory GetImagesSuccessful(List<Img> images) = _$GetImagesSuccessful;

  List<Img> get images;
  $GetImagesSuccessfulCopyWith<GetImagesSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetImagesErrorCopyWith<$Res> {
  factory $GetImagesErrorCopyWith(
          GetImagesError value, $Res Function(GetImagesError) then) =
      _$GetImagesErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetImagesErrorCopyWithImpl<$Res> extends _$GetImagesCopyWithImpl<$Res>
    implements $GetImagesErrorCopyWith<$Res> {
  _$GetImagesErrorCopyWithImpl(
      GetImagesError _value, $Res Function(GetImagesError) _then)
      : super(_value, (v) => _then(v as GetImagesError));

  @override
  GetImagesError get _value => super._value as GetImagesError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetImagesError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetImagesError implements GetImagesError {
  const _$GetImagesError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetImages.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetImagesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetImagesErrorCopyWith<GetImagesError> get copyWith =>
      _$GetImagesErrorCopyWithImpl<GetImagesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Img> images),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Img> images),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetImagesStart value),
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetImagesStart value),
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetImagesError implements GetImages {
  const factory GetImagesError(dynamic error) = _$GetImagesError;

  dynamic get error;
  $GetImagesErrorCopyWith<GetImagesError> get copyWith;
}

/// @nodoc
class _$SetColorTearOff {
  const _$SetColorTearOff();

// ignore: unused_element
  _SetColor call(@nullable String color) {
    return _SetColor(
      color,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetColor = _$SetColorTearOff();

/// @nodoc
mixin _$SetColor {
  @nullable
  String get color;

  $SetColorCopyWith<SetColor> get copyWith;
}

/// @nodoc
abstract class $SetColorCopyWith<$Res> {
  factory $SetColorCopyWith(SetColor value, $Res Function(SetColor) then) =
      _$SetColorCopyWithImpl<$Res>;
  $Res call({@nullable String color});
}

/// @nodoc
class _$SetColorCopyWithImpl<$Res> implements $SetColorCopyWith<$Res> {
  _$SetColorCopyWithImpl(this._value, this._then);

  final SetColor _value;
  // ignore: unused_field
  final $Res Function(SetColor) _then;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
abstract class _$SetColorCopyWith<$Res> implements $SetColorCopyWith<$Res> {
  factory _$SetColorCopyWith(_SetColor value, $Res Function(_SetColor) then) =
      __$SetColorCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String color});
}

/// @nodoc
class __$SetColorCopyWithImpl<$Res> extends _$SetColorCopyWithImpl<$Res>
    implements _$SetColorCopyWith<$Res> {
  __$SetColorCopyWithImpl(_SetColor _value, $Res Function(_SetColor) _then)
      : super(_value, (v) => _then(v as _SetColor));

  @override
  _SetColor get _value => super._value as _SetColor;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_SetColor(
      color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
class _$_SetColor implements _SetColor {
  const _$_SetColor(@nullable this.color);

  @override
  @nullable
  final String color;

  @override
  String toString() {
    return 'SetColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetColor &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @override
  _$SetColorCopyWith<_SetColor> get copyWith =>
      __$SetColorCopyWithImpl<_SetColor>(this, _$identity);
}

abstract class _SetColor implements SetColor {
  const factory _SetColor(@nullable String color) = _$_SetColor;

  @override
  @nullable
  String get color;
  @override
  _$SetColorCopyWith<_SetColor> get copyWith;
}

/// @nodoc
class _$SetOrientationTearOff {
  const _$SetOrientationTearOff();

// ignore: unused_element
  _SetOrientation call(@nullable String orientation) {
    return _SetOrientation(
      orientation,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetOrientation = _$SetOrientationTearOff();

/// @nodoc
mixin _$SetOrientation {
  @nullable
  String get orientation;

  $SetOrientationCopyWith<SetOrientation> get copyWith;
}

/// @nodoc
abstract class $SetOrientationCopyWith<$Res> {
  factory $SetOrientationCopyWith(
          SetOrientation value, $Res Function(SetOrientation) then) =
      _$SetOrientationCopyWithImpl<$Res>;
  $Res call({@nullable String orientation});
}

/// @nodoc
class _$SetOrientationCopyWithImpl<$Res>
    implements $SetOrientationCopyWith<$Res> {
  _$SetOrientationCopyWithImpl(this._value, this._then);

  final SetOrientation _value;
  // ignore: unused_field
  final $Res Function(SetOrientation) _then;

  @override
  $Res call({
    Object orientation = freezed,
  }) {
    return _then(_value.copyWith(
      orientation:
          orientation == freezed ? _value.orientation : orientation as String,
    ));
  }
}

/// @nodoc
abstract class _$SetOrientationCopyWith<$Res>
    implements $SetOrientationCopyWith<$Res> {
  factory _$SetOrientationCopyWith(
          _SetOrientation value, $Res Function(_SetOrientation) then) =
      __$SetOrientationCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String orientation});
}

/// @nodoc
class __$SetOrientationCopyWithImpl<$Res>
    extends _$SetOrientationCopyWithImpl<$Res>
    implements _$SetOrientationCopyWith<$Res> {
  __$SetOrientationCopyWithImpl(
      _SetOrientation _value, $Res Function(_SetOrientation) _then)
      : super(_value, (v) => _then(v as _SetOrientation));

  @override
  _SetOrientation get _value => super._value as _SetOrientation;

  @override
  $Res call({
    Object orientation = freezed,
  }) {
    return _then(_SetOrientation(
      orientation == freezed ? _value.orientation : orientation as String,
    ));
  }
}

/// @nodoc
class _$_SetOrientation implements _SetOrientation {
  const _$_SetOrientation(@nullable this.orientation);

  @override
  @nullable
  final String orientation;

  @override
  String toString() {
    return 'SetOrientation(orientation: $orientation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetOrientation &&
            (identical(other.orientation, orientation) ||
                const DeepCollectionEquality()
                    .equals(other.orientation, orientation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orientation);

  @override
  _$SetOrientationCopyWith<_SetOrientation> get copyWith =>
      __$SetOrientationCopyWithImpl<_SetOrientation>(this, _$identity);
}

abstract class _SetOrientation implements SetOrientation {
  const factory _SetOrientation(@nullable String orientation) =
      _$_SetOrientation;

  @override
  @nullable
  String get orientation;
  @override
  _$SetOrientationCopyWith<_SetOrientation> get copyWith;
}

/// @nodoc
class _$SetQueryTearOff {
  const _$SetQueryTearOff();

// ignore: unused_element
  _SetQuery call(@nullable String query) {
    return _SetQuery(
      query,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetQuery = _$SetQueryTearOff();

/// @nodoc
mixin _$SetQuery {
  @nullable
  String get query;

  $SetQueryCopyWith<SetQuery> get copyWith;
}

/// @nodoc
abstract class $SetQueryCopyWith<$Res> {
  factory $SetQueryCopyWith(SetQuery value, $Res Function(SetQuery) then) =
      _$SetQueryCopyWithImpl<$Res>;
  $Res call({@nullable String query});
}

/// @nodoc
class _$SetQueryCopyWithImpl<$Res> implements $SetQueryCopyWith<$Res> {
  _$SetQueryCopyWithImpl(this._value, this._then);

  final SetQuery _value;
  // ignore: unused_field
  final $Res Function(SetQuery) _then;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
abstract class _$SetQueryCopyWith<$Res> implements $SetQueryCopyWith<$Res> {
  factory _$SetQueryCopyWith(_SetQuery value, $Res Function(_SetQuery) then) =
      __$SetQueryCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String query});
}

/// @nodoc
class __$SetQueryCopyWithImpl<$Res> extends _$SetQueryCopyWithImpl<$Res>
    implements _$SetQueryCopyWith<$Res> {
  __$SetQueryCopyWithImpl(_SetQuery _value, $Res Function(_SetQuery) _then)
      : super(_value, (v) => _then(v as _SetQuery));

  @override
  _SetQuery get _value => super._value as _SetQuery;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_SetQuery(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_SetQuery implements _SetQuery {
  const _$_SetQuery(@nullable this.query);

  @override
  @nullable
  final String query;

  @override
  String toString() {
    return 'SetQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$SetQueryCopyWith<_SetQuery> get copyWith =>
      __$SetQueryCopyWithImpl<_SetQuery>(this, _$identity);
}

abstract class _SetQuery implements SetQuery {
  const factory _SetQuery(@nullable String query) = _$_SetQuery;

  @override
  @nullable
  String get query;
  @override
  _$SetQueryCopyWith<_SetQuery> get copyWith;
}
