import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_app/models/app_state.dart';
import 'package:redux/redux.dart';

class OrientationContainer extends StatelessWidget {
  const OrientationContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.orientation;
      },
    );
  }
}
