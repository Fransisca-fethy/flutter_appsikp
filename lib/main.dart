import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_appsikp/auth.dart';
import 'package:flutter_appsikp/src/screens/home_page.dart';
import 'package:flutter_appsikp/src/screens/login_page.dart';
import 'package:flutter_appsikp/src/screens/splashscreen.dart';
import 'package:provider/provider.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
            create: (_) => AuthService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
        ),
      ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home:AuthenticationWrapper(),
      home: SplashScreen(),
      //home:LoginPage(),
      //home: MyHomePage(title: 'Sistem Informasi Kerja Praktik'),
    ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget{
  const AuthenticationWrapper({
    Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return HomePage();
    }
    return LoginPage();
  }
}
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(""), fit: BoxFit.cover
//                 )
//             ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               new Image.asset("assets/images/SIKP.png"),
//               new Padding(padding: const EdgeInsets.only(bottom: 30.0),),
//               new InkWell(
//                 onTap: (){
//                   _signIn();
//                 },
//                 child: new,
//               )
//             ],
//           )
//
//         )
//     );
//   }
// }

        