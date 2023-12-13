import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:m_statistics/app/modules/quiz/views/quiz_view.dart';
import 'package:photo_view/photo_view.dart';

import '../controllers/module_controller.dart';

class ModuleView extends GetView<ModuleController> {
  ModuleView({Key? key}) : super(key: key);
  @override
  var controller = Get.put(ModuleController());

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title:
              const Text('Materi Awal', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[Image.asset("assets/images/peakpx.jpg")],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "MATERI RELASI",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      // Text(
                      //   "Oleh : Surya Ningsih, S.Si.",
                      //   style: TextStyle(fontSize: 16),
                      // ),

                      Container(
                        padding: EdgeInsets.all(5),
                        width: 90,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(
                          child: Text(
                            "Relasi",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Text(
                          "Relasi adalah suatu sebagai hubungan antara dua  himpunan lainnya. himpunan A dan himpunan B  dikatakan memiliki relasi jika ada anggota yang  saling berpasangan bentuk-bentuk relasi sebagai  berikut :",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Cara penyajian",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Text(
                          "• Diagram panah",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Text(
                          "• Diagram kartesius",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "• Himpunan pasangan berurutan",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "• Diagram Panah",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Diagram Panah adalah diagram yang  membentuk pola dari suatu relasi  kedalam bentuk gambar panah yang  menyatakan hubungan antara anggota  himpunan satu dengan himpunan yang  lain",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Cara penyajian",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery.sizeOf(context).width,
                        height: 200,
                        child: PhotoView(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          imageProvider:
                              AssetImage("assets/images/materi-1a.png"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "• Diagram Cartesius",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "himpunan A berada pada sumbu  horinzontal dan anggota-anggota  himpunan B berada pada sumbu vertikal.  Setiap pasangan anggota himpunan A  yang berelasi dengan anggota himpunan  B dinyatakan dengan titik atau noktah",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Cara penyajian",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery.sizeOf(context).width,
                        height: 200,
                        child: PhotoView(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          imageProvider:
                              AssetImage("assets/images/materi-2a.png"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "• Himpunan pasangan berurutan ",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Himpunan Pasangan Berurutan  adalah relasi yang memasangkan  himpunan A dengan Himpunan B.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Cara penyajian :",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "{(Abdul, Matematika), (Abdul, IPA), (Budi, IPA), (Budi, IPS), (Budi, Kesenian), (Candra, Keterampilan), (Candra, Olahraga), (Dini, Bahasa Inggris), (Dini, Kesenian), (Elok, Matematika), (Elok, IPA), (Elok, Keterampilan)}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Fungsi",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Fungsi atau pemetaan merupakan hubungan khusus yang memasangkan himpunan Ake himpunan B pada setiap masing-masing anggota ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Cara penyajian",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "• Diagram panah",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "• Diagram kartesius",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "• Himpunan pasangan berurutan",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Contoh Soal",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Diketahui fungsi f dari P = {1, 2, 3, 4, 5} ke Q = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}. Relasi yang didefinisikan adalah “setengah kali dari”.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Diagram Panah",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery.sizeOf(context).width,
                        height: 200,
                        child: PhotoView(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          imageProvider:
                              AssetImage("assets/images/materi-3a.png"),
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Diagram Kartesius",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery.sizeOf(context).width,
                        height: 200,
                        child: PhotoView(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          imageProvider:
                              AssetImage("assets/images/materi-4a.png"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Himpunan Pasangan Berurutan",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "korespondensi satu-satu",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Syarat-Syarat: \n• Himpunan A dan B memiliki banyak anggota yang sama\n• ada sebuah relasi yang menggambarkan bahwa masing-  masing anggota A dan anggota B berpasangan\n• masing - masing anggota daerah hasil tidak akan  bercabang terhadap daerah asal",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "fungsi ada korespondensi satu-satu yang mempunyai pengertian fungsi yang memetakan setiap anggota dari himpunan A ke tepat satu anggota B dan setiap anggota himpunan B ke tepat satu anggota A.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      // Text.rich(
                      //   TextSpan(
                      //       text: "Catatan : ",
                      //       style: TextStyle(
                      //           fontSize: 16,
                      //           fontWeight: FontWeight.bold,
                      //           fontStyle: FontStyle.italic),
                      //       children: [
                      //         TextSpan(
                      //           style: TextStyle(
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.normal,
                      //               fontStyle: FontStyle.normal,
                      //               color: Colors.red),
                      //           text: "Karena jumlah",
                      //         ),
                      //         TextSpan(
                      //           style: TextStyle(
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.bold,
                      //               fontStyle: FontStyle.normal,
                      //               color: Colors.red),
                      //           text: " data ganjil",
                      //         ),
                      //         TextSpan(
                      //           style: TextStyle(
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.normal,
                      //               fontStyle: FontStyle.normal,
                      //               color: Colors.red),
                      //           text:
                      //               ", maka penghitungan median yang digunakan adalah cara penghitungan median data ganjil.",
                      //         )
                      //       ]),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: MediaQuery.sizeOf(context).width,
                        height: 110,
                        child: PhotoView(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          imageProvider:
                              AssetImage("assets/images/materi-5a.png"),
                        ),
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
                              controller.finishModule();
                            },
                            child: Text("Lanjut",
                                style: TextStyle(color: Color(0xFF088708)))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
