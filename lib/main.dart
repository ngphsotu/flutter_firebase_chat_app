import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_firebase_chat_app/firebase_options.dart';

import '/common/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        title: 'Firebase Chat App',
        theme: ThemeData(primarySwatch: Colors.teal),
        getPages: AppPages.routes,
        initialRoute: AppPages.INITIAL,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
