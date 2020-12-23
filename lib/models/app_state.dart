library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:image_app/models/img.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {

  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;
  AppState._();

  BuiltList<Img> get images;
}
