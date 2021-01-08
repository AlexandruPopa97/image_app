import 'package:image_app/actions/index.dart';
import 'package:image_app/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetImagesStart>(_getImagesStart),
  TypedReducer<AppState, GetImagesSuccessful>(_getImagesSuccesful),
  TypedReducer<AppState, GetImagesError>(_getImagesError),
  TypedReducer<AppState, SetOrientation>(_setOrientation),
  TypedReducer<AppState, SetQuery>(_setQuery),
  TypedReducer<AppState, SetColor>(_setColor),
]);

AppState _getImagesStart(AppState state, GetImagesStart action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = true);
}

AppState _getImagesSuccesful(AppState state, GetImagesSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..images.addAll(action.images)
      ..isLoading = false
      ..page = b.page + 1;
  });
}

AppState _getImagesError(AppState state, GetImagesError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = false;
  });
}

AppState _setOrientation(AppState state, SetOrientation action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..orientation = action.orientation
      ..images.clear()
      ..page = 1;
  });
}

AppState _setQuery(AppState state, SetQuery action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..query = action.query
      ..images.clear()
      ..page = 1;
  });
}

AppState _setColor(AppState state, SetColor action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..color = action.color
      ..images.clear()
      ..page = 1;
  });
}
