import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/login_screen.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyCq3vyHLgKZY2fZBBLrgTv08jT4s5IDFbI',
        appId: '1:10841637708:android:98453cf55572a4349305e9',
        messagingSenderId: '10841637708',
        projectId: 'flutterdemoapp-d8995',
        storageBucket: 'flutterdemoapp-d8995.appspot.com'
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginScreen(),
    );
  }
}
