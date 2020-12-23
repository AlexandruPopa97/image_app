import 'package:image_app/actions/get_images.dart';
import 'package:image_app/models/app_state.dart';

AppState reducer(AppState state, dynamic action){
  if(action is GetImagesSuccessful) {
    final AppStateBuilder builder= state.toBuilder();
    builder.images.addAll(action.images);
    return builder.build();
  }

  return state;
}