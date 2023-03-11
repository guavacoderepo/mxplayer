import 'package:flutter/material.dart';
import 'package:mxplayer/screens/vidoes.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, statusBarColor: Color.fromARGB(255, 21, 94, 153)),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'MX Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Videospage(),
    );
  }
}
