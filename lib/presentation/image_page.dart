import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({Key key, @required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoView(
        imageProvider: NetworkImage(url),
      ),
    );
  }
}
