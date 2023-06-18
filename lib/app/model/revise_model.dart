// To parse this JSON data, do
//
//     final revises = revisesFromJson(jsonString);

import 'dart:convert';

Revises revisesFromJson(String str) => Revises.fromJson(json.decode(str));

String revisesToJson(Revises data) => json.encode(data.toJson());

class Revises {
  Revises({
    required this.data,
  });

  List<Revise> data;

  factory Revises.fromJson(Map<String, dynamic> json) => Revises(
        data: List<Revise>.from(json["data"].map((x) => Revise.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Revise {
  Revise({
    required this.daerah,
    required this.harga,
    required this.id,
    required this.jenis,
    required this.kategori,
    required this.rasa,
    required this.rating,
    required this.status,
    required this.tempat,
  });

  String daerah;
  String harga;
  int id;
  String jenis;
  String kategori;
  String rasa;
  String rating;
  int status;
  String tempat;

  factory Revise.fromJson(Map<String, dynamic> json) => Revise(
        daerah: json["daerah"],
        harga: json["harga"],
        id: json["id"],
        jenis: json["jenis"],
        kategori: json["kategori"],
        rasa: json["rasa"],
        rating: json["rating"],
        status: json["status"],
        tempat: json["tempat"],
      );

  Map<String, dynamic> toJson() => {
        "daerah": daerah,
        "harga": harga,
        "id": id,
        "jenis": jenis,
        "kategori": kategori,
        "rasa": rasa,
        "rating": rating,
        "status": status,
        "tempat": tempat,
      };
}
