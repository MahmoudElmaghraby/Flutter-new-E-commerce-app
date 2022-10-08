import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/services/auth.dart';
import 'package:flutter_ecommerce/utilities/router.dart';
import 'package:flutter_ecommerce/utilities/routes.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (_) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce app',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFE5E5E5),
          primaryColor: Colors.red,
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: Theme.of(context).textTheme.subtitle1,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
        ),
        onGenerateRoute: onGenerate,
        initialRoute: AppRoutes.landingPageRoute,
      ),
    );
  }
}
