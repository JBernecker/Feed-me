import 'package:feed_me/responsive/mobile_screen_layout.dart';
import 'package:feed_me/responsive/responsive_layout.screen.dart';
import 'package:feed_me/responsive/web_screen_layout.dart';
import 'package:feed_me/screens/login_screen.dart';
import 'package:feed_me/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyBShPEwI2mvoyOp9luQPqqE8fKxBvWi71E",
      appId: "1:923871424248:web:651f5a836faffe9429150d",
      messagingSenderId: "1:923871424248:web:651f5a836faffe9429150d",
      projectId: "feed-me-2c757",
      storageBucket: "feed-me-2c757.appspot.com",
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feed.me',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryBackgroundColor,
      ),
      /*home: ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),*/
      home: LoginScreen(),
    );
  }
}
