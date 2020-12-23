library urls;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'serializers.dart';

part 'urls.g.dart';

abstract class Url implements Built<Url, UrlBuilder>{
  factory Url([void Function(UrlBuilder b) updates]) = _$Url;
  factory Url.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);


  Url._();

  String get small;

  static Serializer<Url> get serializer => _$urlSerializer;
}