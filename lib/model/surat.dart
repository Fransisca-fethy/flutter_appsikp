class Surat{
  final List<String> Semester;
  final String Tahun;
  final String Nim;
  final String Lembaga;
  final String Pimpinan;
  final String NoTelp;
  final String Alamat;
  final String Fax;

  Surat({this.Semester, this.Tahun, this.Nim, this.Lembaga, this.Pimpinan, this.NoTelp, this.Alamat, this.Fax,
  });

  Surat.fromJson(Map <String, dynamic> json)
      :
    Semester= json["semester"],
    Tahun= json["tahun"],
    Nim= json["nim"],
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





// class Model {
//   final String id;
//   final String name;
//   final String gender;
//   final int age;
//   final String address;
//   final String city;
//   final String country;
//   final String status;
//   final String updated;
//
//   Model({ this.id, this.name, this.gender, this.age, this.address, this.city, this.country, this.status, this.updated });
//
//   factory Model.fromJson(Map<String, dynamic> json) {
//     return Model(
//       id: json['_id'] as String,
//       name: json['name'] as String,
//       gender: json['gender'] as String,
//       age: json['age'] as int,
//       address: json['address'] as String,
//       city: json['city'] as String,
//       country: json['country'] as String,
//       status: json['status'] as String,
//       updated: json['updated'] as String,
//     );
//   }
// }