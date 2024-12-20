import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Data_Pengendara extends StatefulWidget {
  const Data_Pengendara({super.key});

  @override
  State<Data_Pengendara> createState() => _Data_PengendaraState();
}

class _Data_PengendaraState extends State<Data_Pengendara> {
  Text text(String teks){
    return Text(
      teks,
      style: GoogleFonts.comicNeue(
        fontSize: 15,
      ),
    ); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        text('Nama Pemilik:'),
        text('----------------'),
        text('Tempat, Tanggal lahir:'),
        text('----------------'),
        text('Alamat:'),
        text('----------------'),
        text('Golongan Darah, JK:'),
        text('----------------'),
        text('Provinsi:'),
        text('----------------'),
      ],
    );
  }
}