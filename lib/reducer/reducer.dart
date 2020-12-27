import 'package:image_app/actions/get_images.dart';
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
  }
  return builder.build();
}
