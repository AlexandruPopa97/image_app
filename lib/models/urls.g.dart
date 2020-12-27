// GENERATED CODE - DO NOT MODIFY BY HAND

part of urls;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Url> _$urlSerializer = new _$UrlSerializer();

class _$UrlSerializer implements StructuredSerializer<Url> {
  @override
  final Iterable<Type> types = const [Url, _$Url];
  @override
  final String wireName = 'Url';

  @override
  Iterable<Object> serialize(Serializers serializers, Url object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'small',
      serializers.serialize(object.small, specifiedType: const FullType(String)),
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
          result.small = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'full':
          result.full = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Url extends Url {
  @override
  final String small;
  @override
  final String full;

  factory _$Url([void Function(UrlBuilder) updates]) => (new UrlBuilder()..update(updates)).build();

  _$Url._({this.small, this.full}) : super._() {
    if (small == null) {
      throw new BuiltValueNullFieldError('Url', 'small');
    }
    if (full == null) {
      throw new BuiltValueNullFieldError('Url', 'full');
    }
  }

  @override
  Url rebuild(void Function(UrlBuilder) updates) => (toBuilder()..update(updates)).build();

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
    return (newBuiltValueToStringHelper('Url')..add('small', small)..add('full', full)).toString();
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
