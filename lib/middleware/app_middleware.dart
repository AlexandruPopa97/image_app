import 'package:flutter/cupertino.dart';
import 'package:image_app/actions/get_images.dart';
import 'package:image_app/data/unsplash_api.dart';
import 'package:image_app/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import 'package:image_app/models/img.dart';

class AppMiddleware {
  const AppMiddleware({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[_getImagesMiddleware];
  }

  Future<void> _getImagesMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    print(action);
    if (action != const GetImages.start()) {
      return;
    }

    try {
      final List<Img> images = await _unsplashApi.getImages();
      final GetImagesSuccessful getImagesSuccessful = GetImagesSuccessful(images);
      store.dispatch(getImagesSuccessful);
    } catch (e) {
      final GetImagesError error = GetImagesError(e);
      print(e);
      store.dispatch(error);
    }
  }
}
