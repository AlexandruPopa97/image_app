import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_app/models/index.dart';
import 'package:redux/redux.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Img>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Img>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.images.toList(),
    );
  }
}
