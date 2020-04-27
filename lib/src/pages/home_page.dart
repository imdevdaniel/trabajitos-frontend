import 'package:flutter/material.dart';

import 'package:trabajitos_frontend/src/providers/home_options_provider.dart';
import 'package:trabajitos_frontend/src/utils/icon_from_string.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: this._bottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '¿Qué necesitas?',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline,
                ),
                this._topSearchBar(),
                Text(
                  'Categorías',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.subtitle,
                ),
                this._categoryOptions(context),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _topSearchBar() {

    // Contenedor tipo Card para la caja de búsqueda principal
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.only(top: 24.0, bottom: 48.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0.0)
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );

  }


  Widget _categoryOptions(BuildContext context) {

    // FutureBuilder para controlar espera de respuesta datos desde el
    // recurso con respuesta en JSON
    return FutureBuilder(
      future: homeOptionsProvider.loadHomeOptions(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {

        return _optionsGrid(snapshot.data, context);

      },
    );

  }

  Widget _optionsGrid(List<dynamic> homeOptions, BuildContext context) {

    // Función para construir grid de botones a partir de la respuesta
    // obtenida en el JSON

    final List<Widget> widgetList = [];
    final List<Widget> widgetRow = [];

    homeOptions.forEach((option) {

      // Contruyendo y agregando botón a respectivo listado de fila
      widgetRow.add(Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: ButtonTheme(
          buttonColor: Colors.white,
          minWidth: 140.0,
          height: 50.0,
          child: RaisedButton(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                getIconFromString(option['icon']),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                Text(option['title']),
              ],
            ),
            onPressed: () {
              Navigator.pushNamed(context, option['route']);
            },
          ),
        ),
      ));

      // Agregando fila de botones a listado de widgets para
      // posteriormente incrustar en columna
      if ((homeOptions.indexOf(option)).isOdd) {

        final Widget rowElement = Row(
          children: widgetRow.map((rowChildren) => rowChildren).toList(),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        );
        widgetList.add(rowElement);
        widgetRow.clear();

      }

    });

    // Retornando contenedor con grilla de botones completa
    return Container(
      padding: EdgeInsets.only(top: 24.0),
      child: Column(
        children: widgetList,
      ),
    );

  }

  // Barra de navegación inferior
  Widget _bottomNavigationBar() {

    return BottomNavigationBar(
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

}