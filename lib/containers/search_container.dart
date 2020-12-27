import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_app/models/app_state.dart';
import 'package:redux/redux.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<GetSearchParams> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GetSearchParams>(
      builder: builder,
      converter: (Store<AppState> store) {
        return GetSearchParams(store.state.query, store.state.color, store.state.orientation);
      },
    );
  }
}

class GetSearchParams{
  const GetSearchParams(this.query, this.color, this.orientation);

  final String query;
  final String color;
  final String orientation;
}