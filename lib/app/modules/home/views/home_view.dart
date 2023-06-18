import 'package:app_restaurant/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 225, 176, 1.0),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //IMAGE
          Container(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 20),
            child: Center(
                child: Image.asset(
              'image/logo.png',
              height: 200,
              width: 200,
            )),
          ),
          //TITLE MENU
          Container(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: const Text('Menu',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(108, 49, 22, 1.0))),
          ),
          //SEARCH BUTTON
          Container(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
            child: SizedBox(
              height: 40,
              width: Get.size.width / 2,
              child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SEARCH);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: const BorderSide(
                            color: Color.fromRGBO(216, 168, 103, 1.0),
                            width: 3)),
                  ),
                  child: const Text(
                    'Search',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(108, 49, 22, 0.7)),
                  )),
            ),
          ),
          //REVISE BUTTON
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SizedBox(
              height: 40,
              width: Get.size.width / 2,
              child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.REVISE);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: const BorderSide(
                            color: Color.fromRGBO(216, 168, 103, 1.0),
                            width: 3)),
                  ),
                  child: const Text(
                    'Revise',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(108, 49, 22, 0.7)),
                  )),
            ),
          ),
          //SOLUTION BUTTON
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SizedBox(
              height: 40,
              width: Get.size.width / 2,
              child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.CASE_LIST);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: const BorderSide(
                            color: Color.fromRGBO(216, 168, 103, 1.0),
                            width: 3)),
                  ),
                  child: const Text(
                    'Solution',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(108, 49, 22, 0.7)),
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          SizedBox(
            height: 30,
            width: Get.size.width,
            child: const Text('v1.0',
                style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}
