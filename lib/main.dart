import "dart:io";

import "package:flutter/material.dart";
import "package:flutter_tesseract_ocr/android_ios.dart";
import "package:google_fonts/google_fonts.dart";
import "package:image_picker/image_picker.dart";
import "package:tubes_pcd_1301213561/classDataKendaraan.dart";
import "package:tubes_pcd_1301213561/data_kendaraan.dart";
import "package:tubes_pcd_1301213561/data_pengendara.dart";
import "package:tubes_pcd_1301213561/pageTambahData.dart";

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark()
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File ?img;
  String platNomor = "";
  DataKendaraan dataSelected = new DataKendaraan(
    "", "", "",
    "", "", "",
    "", "", "",
    "", "", "",
    "", "", "",
    "", "", "",
  );
  List<DataKendaraan> listData = [
    DataKendaraan(
      "Unknow", "Tempat, 20-20-2000", "Unknow", 
      "AB", "Pria", "Unknow", 
      "B 3456 XXX", "Yamaap", "Motor", 
      "Moge", "R1M", "2019", 
      "1000CC", "2390202", "923892", 
      "2902023", "Putih", "01"
    )
  ];

  Future ambilGambar() async{
    final gambar = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(gambar == null) return;
    setState(() {
      img = File(gambar.path);
    });

    platNomor = await FlutterTesseractOcr.extractText(img!.path, language: 'eng', args: {"psm": "4"});
    listData.forEach(
      (data){
        platNomor.split("\n").forEach((nomor){
          if(nomor == data.nomor){
            setState(() {
              dataSelected = data;
            });
          }
        });
      }
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282828),
      body: SafeArea(
        child: Column(
          children: [
            //Gambar Plat Nomor
            Expanded(
              flex: 10,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 14),
                padding: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFF303939),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Gambar Plat Nomor Kendaraan",
                        style: GoogleFonts.comicNeue(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF7BF5FF)
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                        child: img != null 
                        ? Image.file(img!)
                        : Icon(
                          Icons.image_outlined,
                          color: Colors.white,
                          size: 100,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        platNomor == "" ? "[Nomor Kendaraan]" : platNomor,
                        style: GoogleFonts.comicNeue(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF7BF5FF)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //btn Ambil gambar
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  ambilGambar();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF777E7D),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Text(
                    "Ambil Gambar Plat Nomor",
                    style: GoogleFonts.comicNeue(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            //Data pengendara
            Expanded(
              flex: 12,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Box Data Kendaraan
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 8, right: 6),
                        padding: EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF303939),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Data Kendaraan",
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(
                              color: Color(0xFFBCFAFF),
                              thickness: 2,
                            ),
                            Expanded(
                              flex: 1,
                              child: Data_Kendaraan(dataKendaraan: dataSelected,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Box Data Pengendara
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 8, right: 6, bottom: 110),
                        padding: EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF303939),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Data Pengendara",
                              style: GoogleFonts.comicNeue(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(
                              color: Color(0xFFBCFAFF),
                              thickness: 2,
                            ),
                            Expanded(
                              flex: 1,
                              child: Data_Pengendara(dataKendaraan: dataSelected,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //btn tambah data
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageTambahData()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF777E7D),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Text(
                    "Tambah Data Pengendara",
                    style: GoogleFonts.comicNeue(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}