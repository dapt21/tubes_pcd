import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTambahData extends StatefulWidget {
  const PageTambahData({super.key});

  @override
  State<PageTambahData> createState() => _PageTambahDataState();
}

class _PageTambahDataState extends State<PageTambahData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282828),
      body: Column(
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
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          //Form data pengendara
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.cyan,
            ),
          ),
          //box data kendaraan
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          //form data kendaraan
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.cyan,
            ),
          ),
          //btn simpan data
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}