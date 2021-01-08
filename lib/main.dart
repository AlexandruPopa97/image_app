import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:image_app/actions/index.dart';
import 'package:image_app/data/unsplash_api.dart';
import 'package:image_app/middleware_epics/app_epics.dart';
import 'package:image_app/models/index.dart';
import 'package:image_app/presentation/home_page.dart';
import 'package:redux/redux.dart';
import 'package:image_app/reducer/reducer.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  final Client client = Client();
  final UnsplashApi unsplashApi = UnsplashApi(client: client);
  final AppEpics appEpics = AppEpics(unsplashApi: unsplashApi);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );

  store.dispatch(GetImagesStart(initialState.page));
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
