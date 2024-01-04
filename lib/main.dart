import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:note_application/pages/add_page/add_page.dart';
import 'package:note_application/pages/main%20page/mainPage.dart';
import 'package:note_application/pages/note_page/note_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
           page: () => const MainPage(),
           ),
           GetPage(
          name: '/add',
           page: () => const AddPage(),
           ),
           GetPage(
          name: '/view',
           page: () => const NotePage(),
           ),
      ],
      initialRoute: '/',
    );
  }
}
