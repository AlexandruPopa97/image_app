import 'package:flutter/material.dart';
import 'package:image_app/containers/image_container.dart';
import 'package:image_app/containers/is_loading_container.dart';
import 'package:image_app/models/img.dart';
import 'package:image_app/presentation/image_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext builder, bool isLoading) {
        return ImageContainer(
          builder: (BuildContext context, List<Img> images) {
            return Scaffold(
              appBar: AppBar(),
              body: Builder(
                builder: (BuildContext context) {

                  if(isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return GridView.builder(
                    itemCount: images.length,
                    padding: const EdgeInsets.all(8.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final Img image = images[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push<MaterialPageRoute<dynamic>>(
                              context,
                              MaterialPageRoute<MaterialPageRoute<dynamic>>(
                                  builder: (BuildContext context) =>
                                      ImageView(url: image.urls.full)));
                        },
                        child: GridTile(
                          child: Image.network(image.urls.small),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
