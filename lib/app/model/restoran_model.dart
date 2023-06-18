// To parse this JSON data, do
//
//     final restoran = restoranFromJson(jsonString);

import 'dart:convert';

Restoran restoranFromJson(String str) => Restoran.fromJson(json.decode(str));

String restoranToJson(Restoran data) => json.encode(data.toJson());

class Restoran {
  Restoran({
    required this.data,
  });

  List<Datum> data;

  factory Restoran.fromJson(Map<String, dynamic> json) => Restoran(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.daerah,
    required this.harga,
    required this.jenis,
    required this.kategori,
    required this.latitude,
    required this.longitude,
    required this.menu,
    required this.nama,
    required this.no,
    required this.rasa,
    required this.rating,
    required this.similarity,
    required this.telepon,
    required this.tempat,
    required this.rangeHarga,
    required this.rangeRating,
  });

  String daerah;
  int harga;
  String jenis;
  String kategori;
  double latitude;
  double longitude;
  String menu;
  String nama;
  int no;
  String rasa;
  double rating;
  double similarity;
  String telepon;
  String tempat;
  String rangeHarga;
  String rangeRating;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    daerah: json["Daerah"],
    harga: json["Harga"],
    jenis: json["Jenis"],
    kategori: json["Kategori"],
    latitude: json["Latitude"]?.toDouble(),
    longitude: json["Longitude"]?.toDouble(),
    menu: json["Menu"],
    nama: json["Nama"],
    no: json["No"],
    rasa: json["Rasa"],
    rating: json["Rating"]?.toDouble(),
    similarity: json["Similarity"]?.toDouble(),
    telepon: json["Telepon"],
    tempat: json["Tempat"],
    rangeHarga: json["range_harga"],
    rangeRating: json["range_rating"],
  );

  Map<String, dynamic> toJson() => {
    "Daerah": daerah,
    "Harga": harga,
    "Jenis": jenis,
    "Kategori": kategori,
    "Latitude": latitude,
    "Longitude": longitude,
    "Menu": menu,
    "Nama": nama,
    "No": no,
    "Rasa": rasa,
    "Rating": rating,
    "Similarity": similarity,
    "Telepon": telepon,
    "Tempat": tempat,
    "range_harga": rangeHarga,
    "range_rating": rangeRating,
  };
}
