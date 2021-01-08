// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Img> _$imgSerializer = new _$ImgSerializer();
Serializer<Url> _$urlSerializer = new _$UrlSerializer();

class _$ImgSerializer implements StructuredSerializer<Img> {
  @override
  final Iterable<Type> types = const [Img, _$Img];
  @override
  final String wireName = 'Img';

  @override
  Iterable<Object> serialize(Serializers serializers, Img object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'urls',
      serializers.serialize(object.urls, specifiedType: const FullType(Url)),
    ];

    return result;
  }

  @override
  Img deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImgBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
              specifiedType: const FullType(Url)) as Url);
          break;
      }
    }

    return result.build();
  }
}

class _$UrlSerializer implements StructuredSerializer<Url> {
  @override
  final Iterable<Type> types = const [Url, _$Url];
  @override
  final String wireName = 'Url';

  @override
  Iterable<Object> serialize(Serializers serializers, Url object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(String)),
      'full',
      serializers.serialize(object.full, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Url deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Img> images;
  @override
  final bool isLoading;
  @override
  final int page;
  @override
  final String orientation;
  @override
  final String query;
  @override
  final String color;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.images,
      this.isLoading,
      this.page,
      this.orientation,
      this.query,
      this.color})
      : super._() {
    if (images == null) {
      throw new BuiltValueNullFieldError('AppState', 'images');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('AppState', 'page');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        images == other.images &&
        isLoading == other.isLoading &&
        page == other.page &&
        orientation == other.orientation &&
        query == other.query &&
        color == other.color;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, images.hashCode), isLoading.hashCode),
                    page.hashCode),
                orientation.hashCode),
            query.hashCode),
        color.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('images', images)
          ..add('isLoading', isLoading)
          ..add('page', page)
          ..add('orientation', orientation)
          ..add('query', query)
          ..add('color', color))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Img> _images;
  ListBuilder<Img> get images => _$this._images ??= new ListBuilder<Img>();
  set images(ListBuilder<Img> images) => _$this._images = images;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  String _orientation;
  String get orientation => _$this._orientation;
  set orientation(String orientation) => _$this._orientation = orientation;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _images = _$v.images?.toBuilder();
      _isLoading = _$v.isLoading;
      _page = _$v.page;
      _orientation = _$v.orientation;
      _query = _$v.query;
      _color = _$v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              images: images.build(),
              isLoading: isLoading,
              page: page,
              orientation: orientation,
              query: query,
              color: color);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Img extends Img {
  @override
  final Url urls;

  factory _$Img([void Function(ImgBuilder) updates]) =>
      (new ImgBuilder()..update(updates)).build();

  _$Img._({this.urls}) : super._() {
    if (urls == null) {
      throw new BuiltValueNullFieldError('Img', 'urls');
    }
  }

  @override
  Img rebuild(void Function(ImgBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImgBuilder toBuilder() => new ImgBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Img && urls == other.urls;
  }

  @override
  int get hashCode {
    return $jf($jc(0, urls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Img')..add('urls', urls)).toString();
  }
}

class ImgBuilder implements Builder<Img, ImgBuilder> {
  _$Img _$v;

  UrlBuilder _urls;
  UrlBuilder get urls => _$this._urls ??= new UrlBuilder();
  set urls(UrlBuilder urls) => _$this._urls = urls;

  ImgBuilder();

  ImgBuilder get _$this {
    if (_$v != null) {
      _urls = _$v.urls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Img other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Img;
  }

  @override
  void update(void Function(ImgBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Img build() {
    _$Img _$result;
    try {
      _$result = _$v ?? new _$Img._(urls: urls.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Img', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Url extends Url {
  @override
  final String small;
  @override
  final String full;

  factory _$Url([void Function(UrlBuilder) updates]) =>
      (new UrlBuilder()..update(updates)).build();

  _$Url._({this.small, this.full}) : super._() {
    if (small == null) {
      throw new BuiltValueNullFieldError('Url', 'small');
    }
    if (full == null) {
      throw new BuiltValueNullFieldError('Url', 'full');
    }
  }

  @override
  Url rebuild(void Function(UrlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UrlBuilder toBuilder() => new UrlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Url && small == other.small && full == other.full;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, small.hashCode), full.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Url')
          ..add('small', small)
          ..add('full', full))
        .toString();
  }
}

class UrlBuilder implements Builder<Url, UrlBuilder> {
  _$Url _$v;

  String _small;
  String get small => _$this._small;
  set small(String small) => _$this._small = small;

  String _full;
  String get full => _$this._full;
  set full(String full) => _$this._full = full;

  UrlBuilder();

  UrlBuilder get _$this {
    if (_$v != null) {
      _small = _$v.small;
      _full = _$v.full;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Url other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Url;
  }

  @override
  void update(void Function(UrlBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Url build() {
    final _$result = _$v ?? new _$Url._(small: small, full: full);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
