import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_statistics/app/modules/home/views/home_view.dart';
import 'package:m_statistics/app/modules/take_image/views/take_image_view.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  OnboardingView({Key? key}) : super(key: key);
  @override
  var controller = Get.put(OnboardingController());
  Widget build(BuildContext context) {
    print(controller.box.read('isUserExist'));
    return Scaffold(
        backgroundColor: Color(0xFFC5EBC1),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
            ),
            Image.asset("assets/images/onboarding-bg.png"),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Color(0xFFFCFFFD),
                        height: 5,
                        width: 100,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Apakah kamu siap \nbelajar Materi Relasi\ndan Fungsi?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF088708)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Belajar dan melatih dirimu seperti\nbermain game!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(30), // <-- Radius
                                ),
                                primary: Colors.white,
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF088708))),
                            onPressed: () {
                              // controller.playSound();
                              Get.to(TakeImageView());
                            },
                            child: Text("Mulai",
                                style: TextStyle(color: Color(0xFF088708)))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
