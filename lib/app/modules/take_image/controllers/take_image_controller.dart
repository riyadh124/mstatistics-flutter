import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:m_statistics/app/modules/login/views/login_view.dart';

class TakeImageController extends GetxController {
  //TODO: Implement TakeImageController
  late File avatar;
  var isAvatarExist = false.obs;
  final imagePicker = ImagePicker();
  final box = GetStorage();

  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      avatar = File(image.path);
      isAvatarExist.value = true;
      box.write('userAvatar', image.path);
      print("User Avatar : ${box.read('userAvatar')}");
    }
  }

  next(context) {
    if (isAvatarExist.value) {
      print("User Avatar : ${box.read('userAvatar')}");
      Get.to(LoginView());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ambil Foto dulu yuk!')),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
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
