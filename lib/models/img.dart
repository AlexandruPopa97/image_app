part of models;

abstract class Img implements Built<Img, ImgBuilder> {
  factory Img([void Function(ImgBuilder b) updates]) = _$Img;
  factory Img.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Img._();

  Url get urls;

  static Serializer<Img> get serializer => _$imgSerializer;
}
