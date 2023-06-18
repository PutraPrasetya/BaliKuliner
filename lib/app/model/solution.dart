// To parse this JSON data, do
//
//     final solution = solutionFromJson(jsonString);

import 'dart:convert';

Solution solutionFromJson(String str) => Solution.fromJson(json.decode(str));

String solutionToJson(Solution data) => json.encode(data.toJson());

class Solution {
    Solution({
        required this.data,
    });

    List<Datum> data;

    factory Solution.fromJson(Map<String, dynamic> json) => Solution(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        this.daerah,
        required this.harga,
        required this.idRevise,
        this.jenis,
        this.kategori,
        required this.latitude,
        required this.longitude,
        required this.nama,
        required this.noKasus,
        this.rasa,
        required this.rating,
        required this.telepon,
        this.tempat,
    });

    int id;
    String? daerah;
    int harga;
    int idRevise;
    String? jenis;
    String? kategori;
    String latitude;
    String longitude;
    String nama;
    int noKasus;
    String? rasa;
    String rating;
    String telepon;
    String? tempat;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["Id"],
        daerah: json["daerah"],
        harga: json["harga"],
        idRevise: json["idRevise"],
        jenis: json["jenis"],
        kategori: json["kategori"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        nama: json["nama"],
        noKasus: json["noKasus"],
        rasa: json["rasa"],
        rating: json["rating"],
        telepon: json["telepon"],
        tempat: json["tempat"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "daerah": daerah,
        "harga": harga,
        "idRevise": idRevise,
        "jenis": jenis,
        "kategori": kategori,
        "latitude": latitude,
        "longitude": longitude,
        "nama": nama,
        "noKasus": noKasus,
        "rasa": rasa,
        "rating": rating,
        "telepon": telepon,
        "tempat": tempat,
    };
}
