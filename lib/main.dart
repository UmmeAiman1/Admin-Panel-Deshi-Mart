import 'package:adminpanel_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:adminpanel_app/adminpanel_dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    onAddProduct: () {
      // ignore: avoid_print
      print('Add Product Button Clicked');
    
    },
  ));
}

class MyApp extends StatelessWidget {
  final VoidCallback onAddProduct;
  const MyApp({super.key, required this.onAddProduct});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              actions: const [Icon(Icons.notifications)],
            ),
            body: AdminPanel(
              onAddProduct: () {},
            )));
  }
}