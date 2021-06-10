import 'package:flutter/widgets.dart';

class PraKP{
  final List<String> Semester;
  final String Tahun;
  final String Nim;
  final String Tools;
  final String Spesifikasi;
  final String Penguji;
  final String Ruang;
  final String Lembaga;
  final String Pimpinan;
  final String NoTelp;
  final String Alamat;
  final String Fax;

  PraKP(this.Tools, this.Spesifikasi, this.Penguji, this.Ruang, {this.Semester, this.Tahun, this.Nim, this.Lembaga, this.Pimpinan, this.NoTelp, this.Alamat, this.Fax,
  });

  PraKP.fromJson(Map <String, dynamic> json)
      :
        Semester= json["semester"],
        Tahun= json["tahun"],
        Nim= json["nim"],
        Tools= json["tools"],
        Spesifikasi= json["Spesifikasi"],
        Penguji= json["Penguji"],
        Ruang= json["Ruang"],
        Lembaga= json[" lembaga"],
        Pimpinan= json["pimpinan"],
        NoTelp= json["notelp"],
        Alamat= json["alamat"],
        Fax= json["fax"]
  ;

  Map <String, dynamic> toJson() =>
      {
        "semester": Semester,
        "tahun": Tahun,
        "nim": Nim,
        "lembaga": Pimpinan,
        "notelp": NoTelp,
        "alamat": Alamat,
        "fax": Fax
      };
}