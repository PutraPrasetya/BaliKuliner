import 'package:app_restaurant/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recomendation_controller.dart';

class RecomendationView extends GetView<RecomendationController> {
  const RecomendationView({Key? key}) : super(key: key);
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
                'Berikut rekomendasi kami!',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(108, 49, 22, 1.0)),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        itemCount: controller.rekomendasi?.data.length ?? 0,
        itemBuilder: (_, index) {
          final data = controller.rekomendasi?.data[index];
          return Column(
            children: [
              Container(
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Nama Resto
                        Expanded(
                          child: Text(
                            data?.nama.toString() ?? "",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                          ),
                        ),
                        //Checklist
                        Row(
                          children: [
                            GetBuilder(
                              init: controller,
                              builder: (_) {
                                return Checkbox(
                                  value: controller.isChecked,
                                  onChanged: (value) {
                                    controller.isChecked = value == true;
                                    controller.update();
                                  },
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      height: 15,
                      color: Color.fromRGBO(108, 49, 22, 1.0),
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //location
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                            Text(
                              data?.daerah.toString() ?? "",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(108, 49, 22, 1.0)),
                            )
                          ],
                        ),
                        //no telp
                        Row(
                          children: [
                            Icon(Icons.phone_in_talk,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                            Text(
                              data?.telepon.toString() ?? "",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(108, 49, 22, 1.0)),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Rating
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                            Text(
                              data?.rating.toString() ?? "",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(108, 49, 22, 1.0)),
                            ),
                          ],
                        ),
                        //Similarity
                        Row(
                          children: [
                            Icon(Icons.trip_origin,
                                color: Color.fromRGBO(108, 49, 22, 1.0)),
                            Text(
                              '${data?.similarity}%',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(108, 49, 22, 1.0)),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              if ((controller.rekomendasi?.data.length ?? 0) < (index + 2))
                Column(
                  children: [
                    const Divider(
                      height: 50,
                      color: Color.fromRGBO(255, 239, 210, 1.0),
                      thickness: 3,
                      indent: 40,
                      endIndent: 40,
                    ),
                    //Submit
                    Container(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 15),
                      child: SizedBox(
                        height: 50,
                        width: Get.size.width / 2,
                        child: TextButton(
                            onPressed: () {
                              //Back to Search
                              Get.offAllNamed(Routes.HOME);
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
                              'Submit',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(108, 49, 22, 0.7)),
                            )),
                      ),
                    ),
                    //Search Again
                    Container(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                      child: SizedBox(
                        height: 50,
                        width: Get.size.width / 2,
                        child: TextButton(
                            onPressed: () {
                              //Back to Search
                              Get.offAllNamed(Routes.SEARCH);
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
                              'Cari Lagi',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(108, 49, 22, 0.7)),
                            )),
                      ),
                    )
                  ],
                )
            ],
          );
        },
      ),
    );
  }
}
