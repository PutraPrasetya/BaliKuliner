import 'package:app_restaurant/app/modules/home/controllers/case_list_controller.dart';
import 'package:app_restaurant/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CaseListView extends GetView<CaseListController> {
  const CaseListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 225, 176, 1.0),
      //Title
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 239, 210, 1.0),
        toolbarHeight: 80,
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(70))),
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
          child: Column(
            children: const [
              Text(
                'Revised List',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(108, 49, 22, 1.0)),
              ),
            ],
          ),
        ),
      ),
      body: GetBuilder(
        init: controller,
        builder: (_) {
          return ListView.builder(
            itemCount: controller.result?.data.length ?? 0,
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            itemBuilder: (BuildContext context, int i) {
              final data = controller.result?.data[i];
              return GestureDetector(
                onTap: () {
                  //Action (Move to Input Page)
                  Get.toNamed(Routes.SOLUTION, arguments: data);
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                  width: 300,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                        color: const Color.fromRGBO(233, 193, 139, 1.0),
                        style: BorderStyle.solid,
                        width: 2),
                    color: const Color.fromRGBO(255, 239, 210, 1.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Information
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Daerah
                          Text(
                            "Daerah : ${data?.daerah}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                          //Tempat
                          Text(
                            'Tempat : ${data?.tempat}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                          //Kategori
                          Text(
                            'Kategori : ${data?.kategori}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                          //Jenis
                          Text(
                            'Jenis : ${data?.jenis}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                          //Rasa
                          Text(
                            'Rasa : ${data?.rasa}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                          //Harga
                          Text(
                            'Harga : ${data?.harga}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                          //Rating
                          Text(
                            'Rating : ${data?.rating}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
