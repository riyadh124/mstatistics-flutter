import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_statistics/app/modules/discussion/views/discussion_view.dart';
import 'package:m_statistics/app/modules/module/views/module_view.dart';
import 'package:m_statistics/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:m_statistics/app/modules/onboarding/views/onboarding_view.dart';
import 'package:m_statistics/app/modules/quiz/views/quiz_view.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  var controller = Get.put(HomeController());
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1F9F0),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.file(
                          controller.avatar,
                          height: 100.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        controller.userData['name'],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF088708)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Kelas ${controller.userData['class']} - Absen ${controller.userData['absence']}",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      controller.box.read('isUserScoreExist')
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Nilai ${controller.userData['score']}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ],
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF7FC77A),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.sizeOf(context).width,
                height: 70,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    controller.moduleProgress == 1
                        ? Icon(
                            Icons.done,
                            size: 50,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.play_arrow,
                            size: 50,
                            color: Colors.white,
                          ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.sizeOf(context).width - 105,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Materi Awal"),
                                controller.loading
                                    ? LinearPercentIndicator(
                                        backgroundColor: Color(0xFFE4F8DF),
                                        padding: EdgeInsets.all(0),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                250,
                                        animation: false,
                                        lineHeight: 20.0,
                                        animationDuration: 2500,
                                        percent: double.parse(
                                            "${controller.moduleProgress}"),
                                        barRadius: Radius.circular(10),
                                        progressColor: Colors.green,
                                      )
                                    : Text("Press button for downloading",
                                        style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            IconButton(
                                color: Color(0xFF088708),
                                onPressed: () {
                                  Get.to(ModuleView());
                                },
                                icon: Icon(
                                  size: 30,
                                  Icons.keyboard_arrow_right_rounded,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF7FC77A),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.sizeOf(context).width,
                height: 70,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    controller.quizProgress == 1
                        ? Icon(
                            Icons.done,
                            size: 50,
                            color: Colors.white,
                          )
                        : controller.moduleProgress == 1
                            ? Icon(
                                Icons.play_arrow,
                                size: 50,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.white,
                              ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.sizeOf(context).width - 105,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Soal"),
                                controller.loading
                                    ? LinearPercentIndicator(
                                        padding: EdgeInsets.all(0),
                                        backgroundColor: Color(0xFFE4F8DF),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                250,
                                        animation: false,
                                        lineHeight: 20.0,
                                        animationDuration: 2500,
                                        percent: double.parse(
                                            "${controller.quizProgress}"),
                                        barRadius: Radius.circular(10),
                                        progressColor: Colors.green,
                                      )
                                    : Text("Press button for downloading",
                                        style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            IconButton(
                                color: Color(0xFF088708),
                                onPressed: () {
                                  if (controller.moduleProgress == 1) {
                                    Get.to(QuizView());
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Selesaikan materi awal terlebih dahulu!')),
                                    );
                                  }
                                },
                                icon: Icon(
                                  size: 30,
                                  Icons.keyboard_arrow_right_rounded,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF7FC77A),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.sizeOf(context).width,
                height: 70,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    controller.discussProgress == 1
                        ? Icon(
                            Icons.done,
                            size: 50,
                            color: Colors.white,
                          )
                        : controller.quizProgress == 1
                            ? Icon(
                                Icons.play_arrow,
                                size: 50,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.white,
                              ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.sizeOf(context).width - 105,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pembahasan"),
                                controller.loading
                                    ? LinearPercentIndicator(
                                        padding: EdgeInsets.all(0),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                250,
                                        animation: false,
                                        backgroundColor: Color(0xFFE4F8DF),
                                        lineHeight: 20.0,
                                        animationDuration: 2500,
                                        percent: double.parse(
                                            "${controller.discussProgress}"),
                                        barRadius: Radius.circular(10),
                                        progressColor: Colors.green,
                                      )
                                    : Text("Press button for downloading",
                                        style: TextStyle(fontSize: 25)),
                              ],
                            ),
                            IconButton(
                                color: Color(0xFF088708),
                                onPressed: () {
                                  if (controller.quizProgress == 1) {
                                    Get.to(DiscussionView());
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Selesaikan soal terlebih dahulu!')),
                                    );
                                  }
                                },
                                icon: Icon(
                                  size: 30,
                                  Icons.keyboard_arrow_right_rounded,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              controller.discussProgress != 1
                  ? Container(
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
                            Get.to(ModuleView());
                          },
                          child: Text("Mulai",
                              style: TextStyle(color: Color(0xFF088708)))),
                    )
                  : Container(
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
                            controller.box.write('isUserExist', false);
                            controller.box.write('userScore', 0);
                            controller.box.write('isUserScoreExist', false);
                            controller.box.write('moduleProgress', 0.0);
                            controller.box.write('quizProgress', 0.0);
                            controller.box.write('discussProgress', 0.0);
                            controller.box.write('userAvatar', null);
                            controller.box.write('userName', null);
                            controller.box.write('userClass', null);
                            controller.box.write('userAbsence', null);
                            Get.off(OnboardingView());
                          },
                          child: Text("Reset",
                              style: TextStyle(color: Color(0xFF088708)))),
                    ),
            ],
          ),
        )));
  }
}
