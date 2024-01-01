import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_store_provider/providers/main_view_provider.dart';
import 'package:my_store_provider/views/buyers/main_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ChangeNotifierProvider(
      create: (_) => MainViewProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Multi Vendor App',
        theme: ThemeData(fontFamily: 'Brand-Bold'),
        home: const MainView(),
      ),
    );
  }
}
