import 'dart:convert';

import 'package:http/http.dart';
import 'package:image_app/models/img.dart';
import 'package:meta/meta.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Img>> getImages(int page) async {
    final Response response = await _client
        .get('https://api.unsplash.com/photos/?client_id=AlBf115GbwgKHdMaQLvsSJkSDK8OFWPmEf-dYVJ1yFg&page=$page');

    final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
    print(jsonDecode(response.body));
    return data.map((dynamic json) => Img.fromJson(json)).toList();
  }
}
