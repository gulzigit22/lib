import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat1/pages/login_screen.dart';
import 'package:flash_chat1/pages/registration_screen.dart';
import 'package:flutter/material.dart';
 

import 'pages/welcom_dtreen.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  static const String router = 'FlashChat';

 const FlashChat({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home:const WelcomeScreen(),
      initialRoute: WelcomeScreen.route,
      routes: {
        WelcomeScreen.route: ((context) => const WelcomeScreen()),
        RegistrationScreen.route: ((context) => RegistrationScreen()),
        LoginScreen.route: ((context) => LoginScreen()),
        // 'welcom-Screen':((context) => WelcomeScreen()),
      },
    );
  }
}
