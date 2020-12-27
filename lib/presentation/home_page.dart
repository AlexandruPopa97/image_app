import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_app/actions/get_images.dart';
import 'package:image_app/actions/set_orientation.dart';
import 'package:image_app/actions/set_query.dart';
import 'package:image_app/containers/image_container.dart';
import 'package:image_app/containers/is_loading_container.dart';
import 'package:image_app/containers/orientation_container.dart';
import 'package:image_app/models/app_state.dart';
import 'package:image_app/models/img.dart';
import 'package:image_app/presentation/image_page.dart';
import 'package:redux/src/store.dart';

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
                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return Column(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0, right: 8.0),
                            child: Text('Orientation:'),
                          ),
                          OrientationContainer(
                            builder: (BuildContext context, String orientation) {
                              return DropdownButton<String>(
                                value: orientation,
                                hint: const Text('All'),
                                onChanged: (String value) {
                                  print("Noua valoare este $value");
                                  StoreProvider.of<AppState>(context)
                                    ..dispatch(SetOrientation(value))
                                    ..dispatch(SetQuery(value != null ? 'All' : null))
                                    ..dispatch(const GetImages.start(1));
                                },
                                items: <String>[null, 'landscape', 'portrait', 'squarish'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value ?? 'All'),
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ],
                      ),
                      Expanded(
                        child: GridView.builder(
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
                              onTap: () {
                                Navigator.push<MaterialPageRoute<dynamic>>(
                                    context,
                                    MaterialPageRoute<MaterialPageRoute<dynamic>>(
                                        builder: (BuildContext context) => ImageView(url: image.urls.full)));
                              },
                              child: GridTile(
                                child: Image.network(image.urls.small),
                              ),
                            );
                          },
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          final Store<AppState> store = StoreProvider.of<AppState>(context);

                          store.dispatch(GetImages.start(store.state.page));
                        },
                        child: const Text('Load more images'),
                      )
                    ],
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
