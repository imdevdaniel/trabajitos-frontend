import 'package:flutter/material.dart';

import 'package:trabajitos_frontend/src/pages/home_page.dart';
import 'package:trabajitos_frontend/src/pages/messages_page.dart';
import 'package:trabajitos_frontend/src/pages/profile_page.dart';


class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {

  // Indice de navegación para el BottomNavigationBar
  int _activeNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: this._bottomNavigationBar(),
      body: this._setActivePage(this._activeNavIndex),
    );
  }

  Widget _bottomNavigationBar() {

    return BottomNavigationBar(
      currentIndex: this._activeNavIndex,
      onTap: (index) {
        setState(() {
          this._activeNavIndex = index;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio'),
          activeIcon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Mensajes'),
          activeIcon: Icon(Icons.message)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Cuenta'),
          activeIcon: Icon(Icons.person),
        ),
      ],
    );

  }

  Widget _setActivePage(int pageIndex) {

    switch (pageIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return MessagesPage();
        break;
      case 2:
        return ProfilePage();
        break;
      default:
        return HomePage();
    }

  }

}