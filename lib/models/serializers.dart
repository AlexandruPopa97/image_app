library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:image_app/models/img.dart';
import 'package:image_app/models/urls.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
        Img,
        Url,
])
Serializers serializers = (_$serializers.toBuilder() //
        ..addPlugin(StandardJsonPlugin()))
    .build();