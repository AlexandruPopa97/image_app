part of models;

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
