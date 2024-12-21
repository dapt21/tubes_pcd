import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubes_pcd_1301213561/classDataKendaraan.dart';

class Data_Pengendara extends StatefulWidget {
  final DataKendaraan dataKendaraan;
  const Data_Pengendara({super.key, required this.dataKendaraan});

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
        text(widget.dataKendaraan.nama),
        text('Tempat, Tanggal lahir:'),
        text(widget.dataKendaraan.tempatTanggalLahir),
        text('Alamat:'),
        text(widget.dataKendaraan.alamat),
        text('Golongan Darah, JK:'),
        text(widget.dataKendaraan.darah+", "+widget.dataKendaraan.jk),
        text('Provinsi:'),
        text(widget.dataKendaraan.provinsi),
      ],
    );
  }
}