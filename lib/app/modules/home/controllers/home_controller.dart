import 'dart:io';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  bool loading = true;
  final box = GetStorage();
  var userData;
  late File avatar;
  var moduleProgress = 0.0;
  var quizProgress = 0.0;
  var discussProgress = 0.0;

  @override
  void onInit() {
    super.onInit();
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

    moduleProgress = box.read('moduleProgress');
    quizProgress = box.read('quizProgress');
    discussProgress = box.read('discussProgress');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
