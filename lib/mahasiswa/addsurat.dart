import 'package:flutter/material.dart';

class AddSurat extends StatefulWidget {
//AddSurat({Key key}) : super(key: key);

@override
_AddSuratState createState() => _AddSuratState();
}

class _AddSuratState extends State<AddSurat> {
  //final _formKey = GlobalKey<FormState>();
//String

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Surat Keterangan KP"),
          backgroundColor: Colors.orange[700],
        ),
        // body: Column(
        //   children: [
        //   TextField(
        //   decoration: new InputDecoration()
        //
        //   ),
        // ),

    // return new Material(
    //
    //   child: Column(
    //     children: [
    //       Container(
    //         height: 80.0,
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: AssetImage(""),fit:  BoxFit.cover
    //           ),
    //           color: Colors.orange[700]
    //         ),
    //         child: Column(children: [
    //         Text("Pengajuan Surat Keterangan KP",
    //           style: new TextStyle(
    //             color: Colors.white,
    //             fontSize: 0.0,
    //             letterSpacing: 2.0,
    //             fontFamily: "Pacitio"),)
    //         ],
    //       )
    //       ),
    //      ]
    //   ),
    // );
    );
  }
}