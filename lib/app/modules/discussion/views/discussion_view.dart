import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_statistics/app/modules/home/views/home_view.dart';

import '../controllers/discussion_controller.dart';

class DiscussionView extends GetView<DiscussionController> {
  DiscussionView({Key? key}) : super(key: key);
  @override
  var controller = Get.put(DiscussionController());

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.offAll(HomeView());
            },
            icon: Icon(Icons.close),
            color: Colors.black,
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title:
              const Text('Pembahasan', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: 21,
              itemBuilder: (BuildContext context, int index) {
                if (index == 20) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                          controller.finishDiscuss();
                        },
                        child: Text("Selesai",
                            style: TextStyle(color: Color(0xFF088708)))),
                  );
                }

                return Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Level",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFFE4F8DF), shape: BoxShape.circle),
                          child: Center(
                              child: Text(
                            "${index + 1}",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/images/discuss-a-${index + 1}.png"),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                );
              }),
        ));
  }
}
