import 'package:app_restaurant/helpers/static.dart';
import 'package:http/http.dart' as http;

class ApiService {
  ApiService();

  Future<http.Response> postRestoran(
      String daerah,
      String tempat,
      String kategori,
      String jenis,
      String rasa,
      String harga,
      String rating) async {
    var map = Map<String, dynamic>();
    map['daerah'] = daerah;
    map['tempat'] = tempat;
    map['kategori'] = kategori;
    map['jenis'] = jenis;
    map['rasa'] = rasa;
    map['harga'] = harga;
    map['rating'] = rating;
    var client = http.Client();

    final response = await client
        .post(Uri.http(URL_HOST, 'submit'),
            headers: {"Content-Type": "application/x-www-form-urlencoded"},
            body: map)
        .timeout(
      const Duration(seconds: 1),
      onTimeout: () {
        // Time has run out, do what you wanted to do.
        return http.Response(
            'Error', 408); // Request Timeout response status code
      },
    );
    if (response.statusCode == 200) {
      return response;
    } else if (response.statusCode == 401) {
      throw Exception('No Recommendation');
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<http.Response> getRevises() async {
    var client = http.Client();

    final response = await client.get(Uri.http(URL_HOST, 'revises')).timeout(
      const Duration(seconds: 1),
      onTimeout: () {
        // Time has run out, do what you wanted to do.
        return http.Response(
            'Error', 408); // Request Timeout response status code
      },
    );
    if (response.statusCode == 200) {
      return response;
    } else if (response.statusCode == 401) {
      throw Exception('No Recommendation');
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<http.Response> postSolution(
    int idrevise,
    String restoran,
    String latitude,
    String longitude,
    String telepon,
    String harga,
    String rating,
    String daerah,
    String tempat,
    String kategori,
    String jenis,
    String rasa,
  ) async {
    var map = Map<String, dynamic>();
    map['idrevise'] = idrevise.toString();
    map['restoran'] = restoran;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['telepon'] = telepon;
    map['harga'] = harga;
    map['daerah'] = daerah;
    map['tempat'] = tempat;
    map['kategori'] = kategori;
    map['jenis'] = jenis;
    map['rasa'] = rasa;
    map['rating'] = rating;
    var client = http.Client();

    final response = await client
        .post(Uri.http(URL_HOST, 'submit/revise'),
            headers: {"Content-Type": "application/x-www-form-urlencoded"},
            body: map)
        .timeout(
      const Duration(seconds: 1),
      onTimeout: () {
        // Time has run out, do what you wanted to do.
        return http.Response(
            'Error', 408); // Request Timeout response status code
      },
    );
    if (response.statusCode == 200) {
      return response;
    } else if (response.statusCode == 401) {
      throw Exception('No Recommendation');
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<http.Response> getSolution(int idReverse) async {
    var client = http.Client();

    final response = await client
        .get(
            Uri.parse('http://$URL_HOST/revises/solution?id_revise=$idReverse'))
        .timeout(
      const Duration(seconds: 1),
      onTimeout: () {
        // Time has run out, do what you wanted to do.
        return http.Response(
            'Error', 408); // Request Timeout response status code
      },
    );
    if (response.statusCode == 200) {
      return response;
    } else if (response.statusCode == 401) {
      throw Exception('No Recommendation');
    } else {
      throw Exception('Failed to load');
    }
  }
}
