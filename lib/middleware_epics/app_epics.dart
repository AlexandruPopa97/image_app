import 'package:flutter/cupertino.dart';
import 'package:image_app/actions/index.dart';
import 'package:image_app/data/unsplash_api.dart';
import 'package:image_app/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetImagesStart>(_getImagesStart),
    ]);
  }

  Stream<dynamic> _getImagesStart(Stream<GetImagesStart> actions, EpicStore<AppState> store) {
   return  actions
        .asyncMap((GetImagesStart event) =>
            _unsplashApi.getImages(event.page, store.state.orientation, store.state.query, store.state.color))
        .map((List<Img> event) => GetImages.successful(event))
        .onErrorReturnWith((dynamic error) => GetImages.error(error));
  }
}
