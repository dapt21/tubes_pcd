import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubes_pcd_1301213561/classDataKendaraan.dart';

class Data_Kendaraan extends StatefulWidget {
  final DataKendaraan dataKendaraan;
  const Data_Kendaraan({super.key, required this.dataKendaraan});

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
            text('Nomor Registrasi:'),
            text(widget.dataKendaraan.nomor),
            text('Merk:'),
            text(widget.dataKendaraan.merk),
            text('Tipe:'),
            text(widget.dataKendaraan.tipe),
            text('Jenis:'),
            text(widget.dataKendaraan.jenis),
            text('Model:'),
            text(widget.dataKendaraan.model),
            text('Tahun Pembuatan:'),
            text(widget.dataKendaraan.tahun),
            text('Isi Silinder/CC:'),
            text(widget.dataKendaraan.cc),
            text('Nomor Rangka:'),
            text(widget.dataKendaraan.noRangka),
            text('Nomor Mesin:'),
            text(widget.dataKendaraan.noMesin),
            text('Warna:'),
            text(widget.dataKendaraan.warna),
            text('Nomor BPKB'),
            text(widget.dataKendaraan.noBpkb),
            text('Kode Lokasi'),
            text(widget.dataKendaraan.kodeLokasi),
          ],
      ),
    );
  }
}