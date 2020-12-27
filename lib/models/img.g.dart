// GENERATED CODE - DO NOT MODIFY BY HAND

part of immg;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Img> _$imgSerializer = new _$ImgSerializer();

class _$ImgSerializer implements StructuredSerializer<Img> {
  @override
  final Iterable<Type> types = const [Img, _$Img];
  @override
  final String wireName = 'Img';

  @override
  Iterable<Object> serialize(Serializers serializers, Img object, {FullType specifiedType = FullType.unspecified}) {
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
          result.urls.replace(serializers.deserialize(value, specifiedType: const FullType(Url)) as Url);
          break;
      }
    }

    return result.build();
  }
}

class _$Img extends Img {
  @override
  final Url urls;

  factory _$Img([void Function(ImgBuilder) updates]) => (new ImgBuilder()..update(updates)).build();

  _$Img._({this.urls}) : super._() {
    if (urls == null) {
      throw new BuiltValueNullFieldError('Img', 'urls');
    }
  }

  @override
  Img rebuild(void Function(ImgBuilder) updates) => (toBuilder()..update(updates)).build();

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
        throw new BuiltValueNestedFieldError('Img', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
