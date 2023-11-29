import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_statistics/app/modules/login/views/login_view.dart';

import '../controllers/take_image_controller.dart';

class TakeImageView extends GetView<TakeImageController> {
  TakeImageView({Key? key}) : super(key: key);
  @override
  var controller = Get.put(TakeImageController());
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9FDD98),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/math.png",
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "Yuk foto dulu!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF088708)),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => controller.getImage(),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFDCF3DA)),
                        borderRadius: BorderRadius.circular(20)),
                    height: 200,
                    width: 200,
                    child: Obx(
                      () => controller.isAvatarExist.value
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.file(
                                controller.avatar,
                                fit: BoxFit.cover,
                              ))
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/camera.png",
                                  width: 100,
                                  height: 100,
                                ),
                                Text(
                                  "Ambil Foto",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // <-- Radius
                        ),
                        primary: Colors.white,
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF088708))),
                    onPressed: () {
                      controller.next(context);
                    },
                    child: Text("Lanjut",
                        style: TextStyle(color: Color(0xFF088708)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
