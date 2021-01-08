import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_app/actions/index.dart';
import 'package:image_app/containers/image_container.dart';
import 'package:image_app/containers/is_loading_container.dart';
import 'package:image_app/containers/search_container.dart';
import 'package:image_app/models/index.dart';
import 'package:image_app/presentation/image_page.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext builder, bool isLoading) {
        return ImageContainer(
          builder: (BuildContext context, List<Img> images) {
            return Scaffold(
              appBar: AppBar(
                title: const Center(child: Text('Image App')),
              ),
              body: Builder(
                builder: (BuildContext context) {
                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return Column(
                    children: <Widget>[
                      SearchContainer(
                        builder: (BuildContext context, GetSearchParams currentSearch) {
                          return Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: SizedBox(
                                      width: 300.0,
                                      child: TextField(
                                        decoration: const InputDecoration(
                                          labelText: 'Search',
                                        ),
                                        controller: _textController,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.search),
                                    onPressed: () {
                                      StoreProvider.of<AppState>(context)
                                        ..dispatch(SetQuery(_textController.text))
                                        ..dispatch(const GetImages.start(1));
                                    },
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0, right: 8.0),
                                    child: Text('Orientation:'),
                                  ),
                                  DropdownButton<String>(
                                    value: currentSearch.orientation,
                                    hint: const Text('All'),
                                    onChanged: (String value) {
                                      print('Noua valoare este $value');
                                      StoreProvider.of<AppState>(context)
                                        ..dispatch(SetOrientation(value))
                                        ..dispatch(const GetImages.start(1));
                                    },
                                    items: <String>[null, 'landscape', 'portrait', 'squarish'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value ?? 'All'),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0, right: 8.0),
                                    child: Text('Color:'),
                                  ),
                                  DropdownButton<String>(
                                    value: currentSearch.color,
                                    hint: const Text('All'),
                                    onChanged: (String value) {
                                      print('Noua culoare este $value');
                                      StoreProvider.of<AppState>(context)
                                        ..dispatch(SetColor(value))
                                        ..dispatch(const GetImages.start(1));
                                    },
                                    items: <String>[
                                      null,
                                      'black_and_white',
                                      'black',
                                      'white',
                                      'yellow',
                                      'orange',
                                      'red',
                                      'purple',
                                      'magenta',
                                      'green',
                                      'teal',
                                      'blue'
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value ?? 'All'),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
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
