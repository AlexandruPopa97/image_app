import 'package:image_app/actions/get_images.dart';
import 'package:image_app/actions/set_color.dart';
import 'package:image_app/actions/set_orientation.dart';
import 'package:image_app/actions/set_query.dart';
import 'package:image_app/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();
  if (action is GetImagesStart) {
    builder.isLoading = true;
  } else if (action is GetImagesSuccessful) {
    builder
      ..images.addAll(action.images)
      ..isLoading = false
      ..page = builder.page + 1;
  } else if (action is GetImagesError) {
    builder.isLoading = false;
  } else if (action is SetOrientation) {
    builder.orientation = action.orientation;
    builder.images.clear();
    builder.page = 1;
  } else if (action is SetQuery) {
    builder.query = action.query;
    builder.images.clear();
    builder.page = 1;
  } else if (action is SetColor) {
    builder.color = action.color;
    builder.images.clear();
    builder.page = 1;
  }
  return builder.build();
}
