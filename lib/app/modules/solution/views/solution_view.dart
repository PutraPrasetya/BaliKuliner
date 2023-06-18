import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/solution_controller.dart';

class SolutionView extends GetView<SolutionController> {
  const SolutionView({Key? key}) : super(key: key);
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
      body: GetBuilder(
          init: controller,
          builder: (_) {
            return ListView.builder(
              itemCount: controller.result?.data.length ?? 0,
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              itemBuilder: (BuildContext context, int i) {
                final data = controller.result!.data[i];
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                      width: 300,
                      height: 100,
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
                                  data.nama,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(108, 49, 22, 1.0)),
                                ),
                              ),
                              //Rating
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Color.fromRGBO(108, 49, 22, 1.0)),
                                  Text(
                                    data.rating,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 1.0)),
                                  ),
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
                                    data.daerah ?? "",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 1.0)),
                                  )
                                ],
                              ),
                              //no telp
                              Row(
                                children: [
                                  Icon(Icons.phone_in_talk,
                                      color: Color.fromRGBO(108, 49, 22, 1.0)),
                                  Text(
                                    data.telepon,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(108, 49, 22, 1.0)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      height: 50,
                      color: Color.fromRGBO(255, 239, 210, 1.0),
                      thickness: 3,
                      indent: 40,
                      endIndent: 40,
                    ),
                    if (i + 2 > controller.result!.data.length)
                      //Back to Home
                      Container(
                        padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
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
                                        color:
                                            Color.fromRGBO(216, 168, 103, 1.0),
                                        width: 3)),
                              ),
                              child: const Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(108, 49, 22, 0.7)),
                              )),
                        ),
                      )
                  ],
                );
              },
            );
          }),
    );
  }
}
