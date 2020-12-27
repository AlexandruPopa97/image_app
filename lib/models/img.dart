library immg;

import 'package:built_value/built_value.dart';
import 'package:image_app/models/serializers.dart';
import 'package:built_value/serializer.dart';
import 'package:image_app/models/urls.dart';

part 'img.g.dart';

abstract class Img implements Built<Img, ImgBuilder>{
  factory Img([void Function(ImgBuilder b) updates]) = _$Img;
  factory Img.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Img._();

  Url get urls;

  static Serializer<Img> get serializer => _$imgSerializer;
}
