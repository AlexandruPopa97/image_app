// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.images, this.isLoading, this.page, this.orientation, this.query, this.color}) : super._() {
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
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

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
        $jc($jc($jc($jc($jc(0, images.hashCode), isLoading.hashCode), page.hashCode), orientation.hashCode),
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
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
