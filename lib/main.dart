import 'package:flutter/material.dart';
import 'package:food_app/payment_method.dart';
//<<<<<<< HEAD
import 'package:food_app/popular_menu.dart';
//=======
import 'package:food_app/introduction_page.dart';
import 'package:food_app/notification.dart';
import 'package:food_app/order_page.dart';
import 'package:food_app/sign_in_page.dart';
//>>>>>>> 1deb57000d18d58677f4a697577c1c597cc63237
import 'package:food_app/sign_up_page.dart';
import 'package:food_app/splash_screen.dart';

import 'category.dart';
//Owner : Tareq
//Collaborator: Siam
void main() {
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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
//<<<<<<< HEAD
     home: PaymentMethod(),
//=======
    //  home: NotificationPage(),
//>>>>>>> 1deb57000d18d58677f4a697577c1c597cc63237
//>>>>>>> master
    );
  }
}
