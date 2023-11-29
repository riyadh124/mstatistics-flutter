// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m_statistics/app/modules/discussion/views/discussion_view.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'Kamu Hebat!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'Lumayan!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'Kamu harus lebih banyak belajar!';
    } else if (resultScore >= 1) {
      resultText = 'Kamu harus lebih giat!';
    } else {
      resultText = 'Ini nilai yang tidak memuaskan!';
      print(resultScore);
    }
    return resultText;
  }

  final box = GetStorage();
  var userData;
  late File avatar;
  var moduleProgress = 0.0;
  var quizProgress = 0.0;
  var discussProgress = 0.0;

  @override
  Widget build(BuildContext context) {
    print("User Avatar : ${box.read('userAvatar')}");
    print("User Name : ${box.read('userName')}");
    print("User Absence : ${box.read('userAbsence')}");
    print("User Class : ${box.read('userClass')}");
    print("User Exist ? : ${box.read('isUserExist')}");
    print("User Score  : ${box.read('userScore')}");

    avatar = File(box.read('userAvatar'));

    userData = {
      "name": box.read('userName'),
      "avatar": box.read('userAvatar'),
      "absence": box.read('userAbsence'),
      "class": box.read('userClass'),
      "score": box.read('userScore'),
    };

    print("User Data  : ${userData}");
    return Scaffold(
      backgroundColor: Color(0xFF7BD5C4),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: double.infinity,
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 254,
                  height: 254,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF93D9C1)),
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Container(
                  width: 155,
                  height: 155,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF9ADED2)),
                ),
              ),
              Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/maths-2.png",
                    width: 150,
                    height: 150,
                  )),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.sizeOf(context).height - 200,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: Color(0xFFE6EFE3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          width: MediaQuery.sizeOf(context).width,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.file(
                                    avatar,
                                    height: 100.0,
                                    width: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  userData['name'],
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
                                  "Kelas ${userData['class']} - Absen ${userData['absence']}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Nilai",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          width: MediaQuery.sizeOf(context).width,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  resultScore.toString(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF088708)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            resultPhrase.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF088708)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
    
    
    
//     Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             resultPhrase,
//             style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ), //Text
//           Text(
//             'Score ' '$resultScore',
//             style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ), //Text
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 20),
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//             width: double.infinity,
//             height: 60,
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30), // <-- Radius
//                     ),
//                     primary: Colors.white,
//                     textStyle: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF088708))),
//                 onPressed: () {
//                   Get.to(DiscussionView());
//                 },
//                 child:
//                     Text("Lanjut", style: TextStyle(color: Color(0xFF088708)))),
//           ),
//         ], //<Widget>[]
//       ), //Column
//     ); //Center
//   }
// }
