library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:image_app/models/img.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder builder) {
      builder.isLoading = false;
      builder.page = 1;
    });
  }

  AppState._();

  BuiltList<Img> get images;

  bool get isLoading;

  int get page;

  @nullable
  String get orientation;

  @nullable
  String get query;

  @nullable
  String get color;
}
