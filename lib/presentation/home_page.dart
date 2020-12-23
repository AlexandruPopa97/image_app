import 'package:flutter/material.dart';
import 'package:image_app/containers/image_container.dart';
import 'package:image_app/models/img.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(builder: (BuildContext context, List<Img> images) {
      return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          itemCount: images.length,
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            final Img image = images[index];
            return InkWell(
              onTap: () {},
              child: GridTile(
                child: Image.network(image.urls.small),
              ),
            );
          },
        ),
      );
    });
  }
}
