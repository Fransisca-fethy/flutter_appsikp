import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_appsikp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Dashboard extends StatefulWidget {
Dashboard({Key key, this.title}) : super(key: key);
final String title;

@override
_DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("HOME DOSEN"),
        backgroundColor: Colors.orange[700],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
          Card(
          margin: EdgeInsets.all(10.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              splashColor: Colors.orange,
              child: Center(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                Image.asset("assets/images/surat keterangan kp.png",width: 64.0,),
              Text("Pengajuan Surat Keterangan KP",
                  style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
          ),
        ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {

                  },
                  splashColor: Colors.orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/images/daftar regis.png",width: 64.0,),
                        Text("Daftar Registrasi KP",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/images/pengajuan kp & pra kp.png",width: 64.0,),
                        Text("Pengajuan Pra KP & KP",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.orange,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/images/jadwal.png",width: 64.0,),
                        Text("Jadwal Ujian",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                ),
              ),
      ],
    ),
    ),
    );
  }
}