import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Data_Kendaraan extends StatefulWidget {
  const Data_Kendaraan({super.key});

  @override
  State<Data_Kendaraan> createState() => _Data_KendaraanState();
}

class _Data_KendaraanState extends State<Data_Kendaraan> {
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
    return SingleChildScrollView(
      child: Column(
          children: [
            text('Nomor Registrasi'),
            text('----------------'),
            text('Merk:'),
            text('----------------'),
            text('Tipe:'),
            text('----------------'),
            text('Jenis:'),
            text('----------------'),
            text('Model:'),
            text('----------------'),
            text('Tahun Pembuatan:'),
            text('----------------'),
            text('Isi Silinder/CC:'),
            text('----------------'),
            text('Nomor Rangka:'),
            text('----------------'),
            text('Nomor Mesin:'),
            text('----------------'),
            text('Warna:'),
            text('----------------'),
            text('Nomor BPKB'),
            text('----------------'),
            text('Kode Lokasi'),
            text('----------------'),
          ],
      ),
    );
  }
}