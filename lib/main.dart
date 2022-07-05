import 'package:flutter/material.dart';
import 'package:upguzapp/routes/upg_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upg app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: UpgRoutes.instance.onGenerateRoute,
      initialRoute: "/splash",
    );
  }
}
