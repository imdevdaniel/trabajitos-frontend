import 'package:flutter/material.dart';
import 'package:trabajitos_frontend/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabajitos',
      debugShowCheckedModeBanner: false,
      routes: getAppRoutes(),
      initialRoute: 'home',
    );
  }

}
