import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTambahData extends StatefulWidget {
  const PageTambahData({super.key});

  @override
  State<PageTambahData> createState() => _PageTambahDataState();
}

class _PageTambahDataState extends State<PageTambahData> {
  String nama = "";
  String tempatTanggalLahir = "";
  String alamat = "";
  String darah = "";
  String jk = "";
  String provinsi = "";
  String nomor = "";
  String merk = "";
  String tipe = "";
  String jenis = "";
  String model = "";
  String tahun = "";
  String cc = "";
  String noRangka = "";
  String noMesin = "";
  String noBpkb = "";
  String warna = "";
  String kodeLokasi = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282828),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //box Tambah data
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 22),
              decoration: BoxDecoration(
                color: Color(0xFF303939),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 80),
                      child: Text(
                        "Tambah Data",
                        style: GoogleFonts.comicNeue(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //box data pengendara
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, bottom: 15, right: 220),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                 color: Color(0xFF777E7D),
              ),
              child: Text(
                "Data Pengendara",
                style: GoogleFonts.comicNeue(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          //Form data pengendara
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  //Nama Pemilik
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    child: TextField(
                      onChanged: (data){
                        nama = data;
                      },
                      decoration: InputDecoration(
                        hintText: "Nama Pemilik",
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                      ),
                    ),
                  ),
                  //Tempat Tanggal Lahir
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    child: TextField(
                      onChanged: (data){
                        tempatTanggalLahir = data;
                      },
                      decoration: InputDecoration(
                        hintText: "Tempat, Tanggal lahir",
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                      ),
                    ),
                  ),
                  //Alamat
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    child: TextField(
                      onChanged: (data){
                        alamat = data;
                      },
                      decoration: InputDecoration(
                        hintText: "Alamat",
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                      ),
                    ),
                  ),
                  //Gol. Darah dan JK
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Gol. Darah
                      DropdownMenu<String>(
                        enableSearch: false,
                        hintText: "Gol. Darah",
                        onSelected: (data){
                          darah = data ?? "";
                        },
                        width: 160,
                        inputDecorationTheme: InputDecorationTheme(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          constraints: BoxConstraints(maxHeight: 40),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                        ),
                        dropdownMenuEntries: [
                          DropdownMenuEntry(
                            value: "A",
                            label: "A"
                          ),
                          DropdownMenuEntry(
                            value: "B",
                            label: "B"
                          ),
                          DropdownMenuEntry(
                            value: "O",
                            label: "O"
                          ),
                          DropdownMenuEntry(
                            value: "AB",
                            label: "AB"
                          ),
                        ],
                      ),
                      //Jenis Kelamin
                      DropdownMenu<String>(
                        enableSearch: false,
                        hintText: "Jenis kelamin",
                        onSelected: (data){
                          jk = data ?? "";
                        },
                        width: 190,
                        inputDecorationTheme: InputDecorationTheme(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          constraints: BoxConstraints(maxHeight: 40),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                        ),
                        dropdownMenuEntries: [
                          DropdownMenuEntry(
                            value: "Pria",
                            label: "Pria"
                          ),
                          DropdownMenuEntry(
                            value: "Wanita",
                            label: "Wanita"
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Provinsi
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3),
                    child: TextField(
                      onChanged: (data){
                        provinsi = data;
                      },
                      decoration: InputDecoration(
                        hintText: "Provinsi",
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFBCFAFF),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(26))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //box data kendaraan
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, bottom: 15, right: 220),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                 color: Color(0xFF777E7D),
              ),
              child: Text(
                "Data Kendaraan",
                style: GoogleFonts.comicNeue(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          //form data kendaraan
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //Nomor Register
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 3),
                      child: TextField(
                        onChanged: (data){
                          nomor = data;
                        },
                        decoration: InputDecoration(
                          hintText: "Nomor Registrasi",
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                        ),
                      ),
                    ),
                    //Merk dan Tipe
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        children: [
                          //Merk
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "Merk",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                          //Tipe
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "Tipe",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Jenis dan Model
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        children: [
                          //Jenis
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "Jenis",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                          //Model
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "Model",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Tahun buat dan CC
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        children: [
                          //Tahun Buat
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "Tahun Buat",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                          //CC
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "CC",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Nomor Rangka
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 3),
                      child: TextField(
                        onChanged: (data){
                          nomor = data;
                        },
                        decoration: InputDecoration(
                          hintText: "Nomor Rangka",
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                        ),
                      ),
                    ),
                    //Nomor Mesin
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 3),
                      child: TextField(
                        onChanged: (data){
                          nomor = data;
                        },
                        decoration: InputDecoration(
                          hintText: "Nomor Mesin",
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                        ),
                      ),
                    ),
                    //Nomor BPKB
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 3),
                      child: TextField(
                        onChanged: (data){
                          nomor = data;
                        },
                        decoration: InputDecoration(
                          hintText: "Nomor BPKB",
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFBCFAFF),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(26))
                          ),
                        ),
                      ),
                    ),
                    //Warna dan Kode lokasi
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        children: [
                          //Warna
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "Warna",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                          //Kode lokasi
                          Expanded(
                            flex: 1,
                            child: TextField(
                              onChanged: (data){
                                nomor = data;
                              },
                              decoration: InputDecoration(
                                hintText: "Kode Lokasi",
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFBCFAFF),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(26))
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //btn simpan data
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: (){
                
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
                  "Simpan Data Pengendara",
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
    );
  }
}