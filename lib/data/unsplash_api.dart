import 'dart:convert';

import 'package:http/http.dart';
import 'package:image_app/models/img.dart';
import 'package:meta/meta.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Img>> getImages(int page, String orientation, String query, String color) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: (orientation != null) ? <String>['search', 'photos'] : <String>['photos'],
      queryParameters: <String, String>{
        'client_id': 'AlBf115GbwgKHdMaQLvsSJkSDK8OFWPmEf-dYVJ1yFg',
        'page': '$page',
        if (query != null) 'query': query else if (orientation != null) 'query': 'all',
        if (color != null) 'color': color,
        if (orientation != null) 'orientation': orientation,
      },
    );

    print(url);

    final Response response = await _client.get(url);

    if (url.queryParameters['query'] != null && url.queryParameters['orientation'] != null) {
      print(url.queryParameters['query']);
      print('Nu e null');
      final List<dynamic> data = jsonDecode(response.body)['results'] as List<dynamic>;
      return data.map((dynamic json) => Img.fromJson(json)).toList();
    } else {
      print(' e null');
      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      return data.map((dynamic json) => Img.fromJson(json)).toList();
    }
  }
}
