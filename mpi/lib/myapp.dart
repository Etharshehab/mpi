import 'package:flutter/material.dart';
import 'package:mpi/src/feauture/login/view/screens/login.dart';
import 'package:mpi/src/feauture/register/view/screens/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
      routes: {
        'login': (context) => Login(),
        'register': (context) => RegisterScreen(),
      },
    );
  }
}
