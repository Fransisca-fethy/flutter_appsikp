import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddPraKP extends StatefulWidget {
//AddSurat({Key key}) : super(key: key);

  @override
  _AddPraKPState createState() => _AddPraKPState();
}

class _AddPraKPState extends State<AddPraKP> {
  //final _formKey = GlobalKey<FormState>();
//String
  var selectedCurrency, selectedType;
  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
  final List<String> _semester = <String>[
    'Gasal',
    'Genap'
  ];
  final TextEditingController tahunController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController toolsController = TextEditingController();
  final TextEditingController spesifikasiController = TextEditingController();
  final TextEditingController pengujiController = TextEditingController();
  final TextEditingController ruangController = TextEditingController();
  final TextEditingController lembagaController = TextEditingController();
  final TextEditingController pimpinanController = TextEditingController();
  final TextEditingController notelpController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController faxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference prakp = firestore.collection('prakp');

    return Scaffold(
      appBar: new AppBar(
        title: Text("Data Pra KP"),
        backgroundColor: Colors.orange[700],
      ),
        body: Form(
          key: _formKeyValue,
          autovalidateMode: AutovalidateMode.always,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            children: <Widget>[
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Icon(
                  //   FontAwesomeIcons.moneyBill,
                  //   size: 25.0,
                  //   color: Color(0xffb74011),
                  // ),
                  SizedBox(width: 20.0),
                  DropdownButton(
                    items: _semester
                        .map((value) => DropdownMenuItem(
                      child: Text(
                        value,
                        style: TextStyle(color: Color(0xffb74011)),
                      ),
                      value: value,
                    ))
                        .toList(),
                    onChanged: (selectedAccountType) {
                      print('$selectedAccountType');
                      setState(() {
                        selectedType = selectedAccountType;
                      });
                    },
                    value: selectedType,
                    isExpanded: false,
                    hint: Text(
                      'Semester',
                      style: TextStyle(color: Color(0xffb74011)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              new TextFormField(
                  controller: tahunController,
                  decoration: InputDecoration(
                    // icon: const Icon(
                    //   FontAwesomeIcons.yea,
                    //   color: Color(0xffb74011),
                    // ),
                    hintText: 'Masukkan Tahun',
                    labelText: 'Tahun',
                  ),
                  keyboardType: TextInputType.number
              ),
              new TextFormField(
                  controller: nimController,
                decoration: InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan NIM',
                  labelText: 'NIM',
                ),
                  keyboardType: TextInputType.number
              ),
              new TextFormField(
                controller: toolsController,
                decoration: InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan Tools',
                  labelText: 'Tools',
                ),
              ),
              new TextFormField(
                controller: spesifikasiController,
                decoration: InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan Spessifikasi',
                  labelText: 'Spesifikasi',
                ),
              ),
              new TextFormField(
                controller: pengujiController,
                decoration: InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan Penguji',
                  labelText: 'Penguji',
                ),
              ),
              new TextFormField(
                controller: ruangController,
                decoration: InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan Ruang',
                  labelText: 'Ruang',
                ),
              ),
              new TextFormField(
                controller: lembagaController,
                decoration: InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan Lembaga',
                  labelText: 'Lembaga',
                ),
              ),
              new TextFormField(
                controller: pimpinanController,
                decoration: InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan Pimpinan',
                  labelText: 'Pimpinan',
                ),
              ),
              new TextFormField(
                  controller: notelpController,
                  decoration: const InputDecoration(
                    // icon: const Icon(
                    //   FontAwesomeIcons.userCircle,
                    //   color: Color(0xffb74011),
                    // ),
                    hintText: 'Masukkan No. Telp',
                    labelText: 'No. Telp',
                  ),
                  keyboardType: TextInputType.number
              ),
              new TextFormField(
                controller: alamatController,
                decoration: const InputDecoration(
                  // icon: const Icon(
                  //   FontAwesomeIcons.userCircle,
                  //   color: Color(0xffb74011),
                  // ),
                  hintText: 'Masukkan Alamat',
                  labelText: 'Alamat',
                ),
              ),
              new TextFormField(
                  controller: faxController,
                  decoration: InputDecoration(
                    // icon: const Icon(
                    //   FontAwesomeIcons.userCircle,
                    //   color: Color(0xffb74011),
                    // ),
                    hintText: 'Masukkan Fax',
                    labelText: 'Fax',
                  ),
                  keyboardType: TextInputType.number
              ),

              // new TextFormField(
              //   decoration: const InputDecoration(
              //     // icon: const Icon(
              //     //   FontAwesomeIcons.envelope,
              //     //   color: Color(0xffb74011),
              //     // ),
              //     hintText: 'Enter your Email Address',
              //     labelText: 'Email',
              //   ),
              //   keyboardType: TextInputType.emailAddress,
              // ),
              // SizedBox(height: 20.0),
              // new StreamBuilder<QuerySnapshot>(
              //     stream: Firestore.instance.collection("currency").snapshots(),
              //     builder: (context, snapshot) {
              //       if (!snapshot.hasData)
              //         const Text("Loading.....");
              //       else {
              //         List<DropdownMenuItem> currencyItems = [];
              //         for (int i = 0; i < snapshot.data.documents.length; i++) {
              //           DocumentSnapshot snap = snapshot.data.documents[i];
              //           currencyItems.add(
              //             DropdownMenuItem(
              //               child: Text(
              //                 snap.documentID,
              //                 style: TextStyle(color: Color(0xff11b719)),
              //               ),
              //               value: "${snap.documentID}",
              //             ),
              //           );
              //         }
              //         return Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: <Widget>[
              //             Icon(FontAwesomeIcons.coins,
              //                 size: 25.0, color: Color(0xff11b719)),
              //             SizedBox(width: 50.0),
              //             DropdownButton(
              //               items: currencyItems,
              //               onChanged: (currencyValue) {
              //                 final snackBar = SnackBar(
              //                   content: Text(
              //                     'Selected Currency value is $currencyValue',
              //                     style: TextStyle(color: Color(0xff11b719)),
              //                   ),
              //                 );
              //                 Scaffold.of(context).showSnackBar(snackBar);
              //                 setState(() {
              //                   selectedCurrency = currencyValue;
              //                 });
              //               },
              //               value: selectedCurrency,
              //               isExpanded: false,
              //               hint: new Text(
              //                 "Choose Currency Type",
              //                 style: TextStyle(color: Color(0xff11b719)),
              //               ),
              //             ),
              //           ],
              //         );
              //       }
              //     }),
              // SizedBox(
              //   height: 150.0,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    // color: Color(0xff11b719),
                    // textColor: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text("Submit", style: TextStyle(fontSize: 24.0)),
                          ],
                        )),
                    onPressed: (){
                    //_addSurat();
                    //Navigator.pop(context);
                      prakp.add({
                        'tahun' : int.tryParse(tahunController.text) ?? 0,
                        'nim' : int.tryParse(nimController.text) ?? 0,
                        'tools' : toolsController.text,
                        'spesifikasi' : spesifikasiController.text,
                        'penguji' : pengujiController.text,
                        'ruang' : ruangController.text,
                        'lembaga' : lembagaController.text,
                        'pimpinan' : pimpinanController.text,
                        'notelp' : int.tryParse(notelpController.text) ?? 0,
                        'alamat' : alamatController.text,
                        'fax' : faxController.text,
                      });
                      tahunController.text = '';
                      nimController.text = '';
                      toolsController.text = '';
                      spesifikasiController.text = '';
                      pengujiController.text = '';
                      ruangController.text = '';
                      lembagaController.text = '';
                      pimpinanController.text = '';
                      notelpController.text = '';
                      alamatController.text = '';
                      faxController.text = '';
                    }
                    // shape: new RoundedRectangleBorder(
                    //     borderRadius: new BorderRadius.circular(30.0))),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

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