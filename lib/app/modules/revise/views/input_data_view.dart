import 'package:app_restaurant/app/modules/revise/controllers/input_data_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class InputDataView extends GetView<InputDataController> {
  const InputDataView({Key? key}) : super(key: key);
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
          padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
          child: Column(
            children: const [
              Text(
                'Input Data Revise',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(108, 49, 22, 1.0)),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        children: [
          //Restoran
          Column(
            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                child: const Text('Restoran',
                    style: TextStyle(
                        fontSize: 16,
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
                child: TextField(
                  controller: controller.textEditingNama,
                  decoration: InputDecoration(
                      hintText: 'nama restoran', border: InputBorder.none),
                ),
                //Text Field
              )
            ],
          ),
          //Harga
          Column(
            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                child: const Text('Harga',
                    style: TextStyle(
                        fontSize: 16,
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
                child: TextField(
                  controller: controller.textEditingHarga,
                  decoration: InputDecoration(
                      hintText: 'harga menu', border: InputBorder.none),
                ),
                //Text Field
              )
            ],
          ),
          //Rating
          Column(
            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                child: const Text('Rating',
                    style: TextStyle(
                        fontSize: 16,
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
                child: TextField(
                  controller: controller.textEditingRating,
                  decoration: InputDecoration(
                      hintText: 'nilai rating', border: InputBorder.none),
                ),
                //Text Field
              )
            ],
          ),
          //Latitude
          Column(
            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                child: const Text('Latitude',
                    style: TextStyle(
                        fontSize: 16,
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
                child: TextField(
                  controller: controller.textEditingLat,
                  decoration: InputDecoration(
                      hintText: 'titik latitude', border: InputBorder.none),
                ),
                //Text Field
              )
            ],
          ),
          //Longitude
          Column(
            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                child: const Text('Longitude',
                    style: TextStyle(
                        fontSize: 16,
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
                child: TextField(
                  controller: controller.textEditingLong,
                  decoration: InputDecoration(
                      hintText: 'titik longitude', border: InputBorder.none),
                ),
                //Text Field
              )
            ],
          ),
          //Telepon
          Column(
            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                child: const Text('No. Telepon',
                    style: TextStyle(
                        fontSize: 16,
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
                child: TextFormField(
                  controller: controller.textEditingNoTelp,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'nomor restoran', border: InputBorder.none),
                ),
                //Text Field
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
          //Submit
          Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 15),
            child: SizedBox(
              height: 50,
              width: Get.size.width / 2,
              child: TextButton(
                  onPressed: () {
                    //Submit Data
                    controller.addSolution();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 239, 210, 1.0),
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
        ],
      ),
    );
  }
}
