import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utilities/router.dart';
import 'package:flutter_ecommerce/utilities/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce app',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
        primaryColor: Colors.red,
      ),
      onGenerateRoute: onGenerate,
      initialRoute: AppRoutes.loginPageRoute,
    );
  }
}
