import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_appsikp/mahasiswa/viewjadwal.dart';
import 'package:flutter_appsikp/mahasiswa/addkp.dart';
import 'package:flutter_appsikp/mahasiswa/addprakp.dart';
import 'package:flutter_appsikp/mahasiswa/addsurat.dart';
import 'package:flutter_appsikp/main.dart';
import 'package:flutter_appsikp/src/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_appsikp/auth.dart';
import 'package:provider/provider.dart';

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
        title: Text("HOME"),
        backgroundColor: Colors.orange[700],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
              decoration: new BoxDecoration(color: Colors.white),
              // currentAccountPicture:
              //   new CircleAvatar(
              //     backgroundImage: currentUser.photoUrl.isNotEmpty ?
              //     new NetworkImage(currentUser.photoUrl) : currentUser.displayName.substring(0)),
              // accountName: new Text('Welcome, ${currentUser.displayName}', style: _userInfoTxtStyle),
              // accountEmail: new Text(currentUser.email?? '', style:  _userInfoTxtStyle)
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthService>().signOut();
              },
              child: Text("Sign out"),
            ),
            new ListTile(
              leading: new Icon(Icons.close),
              //title: new Text(Strings.logOut, style: _drawerItemTxtStyle),
              onTap: () {
                Navigator.pop(context);
                // sign out
                // FirebaseAuth.instance.signOut();

                // navigate to Welcome page
                Navigator.push(context, new MaterialPageRoute(
                  builder: (_) => new MyApp(),
                ));
              },
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
                  Navigator.push(context,
                      new MaterialPageRoute(
                        builder: (_) => new AddSurat(),
                      ));
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
                  Navigator.push(context,
                      new MaterialPageRoute(
                        builder: (_) => new AddPraKP(),
                      ));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/pengajuan pra kp.png",width: 64.0,),
                      Text("Pengajuan Pra KP",
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(
                        builder: (_) => new AddKP(),
                      ));
                },
                splashColor: Colors.orange,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/pengajuan kp.png",width: 64.0,),
                      Text("Pengajuan KP",
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
                  Navigator.push(context,
                      new MaterialPageRoute(
                        builder: (_) => new ViewJadwal(),
                      ));
                },
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