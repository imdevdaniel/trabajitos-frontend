import 'package:flutter/material.dart';
import 'package:trabajitos_frontend/routes/routes.dart';
import 'package:trabajitos_frontend/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabajitos',
      debugShowCheckedModeBanner: false,
      routes: getAppRoutes(),
      initialRoute: 'home',
      onGenerateRoute: (RouteSettings settings) {

        print('Requested route "${ settings.name }" not found.');

        return MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        );

      },
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(238, 242, 246, 1),
        fontFamily: 'Roboto',
      ),
    );
  }

}
