import 'package:app_restaurant/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 225, 176, 1.0),
      //Title
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 239, 210, 1.0),
        toolbarHeight: 100,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(70))),
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
          child: Column(
            children: const [
              Text(
                'Ingin makan apa hari ini..',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(108, 49, 22, 1.0)),
              ),
            ],
          ),
        ),
      ),
      //Option
      body: GetBuilder(
          init: controller,
          builder: (_) {
            return ListView(
              children: [
                //Daerah
                Column(
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
                      child: const Text('Daerah',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 1.0))),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Color.fromRGBO(108, 49, 22, 0.7),
                              style: BorderStyle.solid,
                              width: 2)),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        isExpanded: true,
                        value: controller.selDaerah,
                        items: controller.listDaerah
                            .map((daerah) => DropdownMenuItem<String>(
                                value: daerah,
                                child: Text(daerah,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 0.7)))))
                            .toList(),
                        onChanged: (daerah) {
                          controller.selDaerah = daerah;
                          controller.update();
                        },
                      ),
                    )
                  ],
                ),
                //Tempat
                Column(
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
                      child: const Text('Tempat',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 1.0))),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Color.fromRGBO(108, 49, 22, 0.7),
                              style: BorderStyle.solid,
                              width: 2)),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        isExpanded: true,
                        value: controller.selTempat,
                        items: controller.listTempat
                            .map((tempat) => DropdownMenuItem<String>(
                                value: tempat,
                                child: Text(tempat,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 0.7)))))
                            .toList(),
                        onChanged: (tempat) {
                          controller.selTempat = tempat;
                          controller.update();
                        },
                      ),
                    )
                  ],
                ),
                //Kategori
                Column(
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
                      child: const Text('Kategori',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 1.0))),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Color.fromRGBO(108, 49, 22, 0.7),
                              style: BorderStyle.solid,
                              width: 2)),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        isExpanded: true,
                        value: controller.selKategori,
                        items: controller.listKategori
                            .map((kategori) => DropdownMenuItem<String>(
                                value: kategori,
                                child: Text(kategori,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 0.7)))))
                            .toList(),
                        onChanged: (kategori) {
                          controller.selKategori = kategori;
                          controller.update();
                        },
                      ),
                    )
                  ],
                ),
                //Jenis
                Column(
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
                      child: const Text('Jenis',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 1.0))),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Color.fromRGBO(108, 49, 22, 0.7),
                              style: BorderStyle.solid,
                              width: 2)),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        isExpanded: true,
                        value: controller.selJenis,
                        items: controller.listJenis
                            .map((jenis) => DropdownMenuItem<String>(
                                value: jenis,
                                child: Text(jenis,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 0.7)))))
                            .toList(),
                        onChanged: (jenis) {
                          controller.selJenis = jenis;
                          controller.update();
                        },
                      ),
                    )
                  ],
                ),
                //Rasa
                Column(
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
                      child: const Text('Rasa',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 1.0))),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Color.fromRGBO(108, 49, 22, 0.7),
                              style: BorderStyle.solid,
                              width: 2)),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        isExpanded: true,
                        value: controller.selRasa,
                        items: controller.listRasa
                            .map((rasa) => DropdownMenuItem<String>(
                                value: rasa,
                                child: Text(rasa,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 0.7)))))
                            .toList(),
                        onChanged: (rasa) {
                          controller.selRasa = rasa;
                          controller.update();
                        },
                      ),
                    )
                  ],
                ),
                //Harga
                Column(
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
                      child: const Text('Harga',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 1.0))),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Color.fromRGBO(108, 49, 22, 0.7),
                              style: BorderStyle.solid,
                              width: 2)),
                      child: DropdownButton<String>(
                          underline: SizedBox.shrink(),
                          isExpanded: true,
                          value: controller.selHarga,
                          items: controller.listHarga
                              .map((harga) => DropdownMenuItem<String>(
                                  value: harga,
                                  child: Text(harga,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(
                                              108, 49, 22, 0.7)))))
                              .toList(),
                          onChanged: (harga) {
                            controller.selHarga = harga;
                            controller.update();
                          }),
                    )
                  ],
                ),
                //Rating
                Column(
                  children: [
                    Container(
                      width: 250,
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 5),
                      child: const Text('Rating',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 1.0))),
                    ),
                    Container(
                      width: 250,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Color.fromRGBO(108, 49, 22, 0.7),
                              style: BorderStyle.solid,
                              width: 2)),
                      child: DropdownButton<String>(
                        underline: const SizedBox.shrink(),
                        isExpanded: true,
                        value: controller.selRating,
                        items: controller.listRating
                            .map((rating) => DropdownMenuItem<String>(
                                value: rating,
                                child: Text(rating,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 0.7)))))
                            .toList(),
                        onChanged: (rating) {
                          controller.selRating = rating;
                          controller.update();
                        },
                      ),
                    )
                  ],
                ),

                const Divider(
                  height: 50,
                  color: Color.fromRGBO(255, 239, 210, 1.0),
                  thickness: 3,
                  indent: 40,
                  endIndent: 40,
                ),
                //Submit Button
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                  child: SizedBox(
                    height: 50,
                    width: Get.size.width / 2,
                    child: TextButton(
                        onPressed: () async {
                          //Lempar Data
                          controller.addRestoran();
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(255, 239, 210, 1.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              side: const BorderSide(
                                  color: Color.fromRGBO(216, 168, 103, 1.0),
                                  width: 3)),
                        ),
                        child: const Text(
                          'Cari',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(108, 49, 22, 0.7)),
                        )),
                  ),
                )
              ],
            );
          }),
    );
  }
}
