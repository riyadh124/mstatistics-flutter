import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m_statistics/app/modules/home/views/home_view.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController absenceController = TextEditingController();
  TextEditingController classController = TextEditingController();
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    absenceController = TextEditingController();
    classController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  login() {
    box.write('userName', nameController.text);
    box.write('userAbsence', absenceController.text);
    box.write('userClass', classController.text);
    box.write('isUserExist', true);
    print("User Avatar : ${box.read('userAvatar')}");
    print("User Name : ${box.read('userName')}");
    print("User Absence : ${box.read('userAbsence')}");
    print("User Class : ${box.read('userClass')}");
    print("User Exist ? : ${box.read('isUserExist')}");
    Get.offAll(HomeView());
  }
}
