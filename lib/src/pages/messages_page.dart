import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;

class MessagesPage extends StatefulWidget {

  @override
  _MessagesPageState createState() => _MessagesPageState();

}

class _MessagesPageState extends State<MessagesPage> {

  final opciones = [
    {
      'name': 'Jose Carlos Tobar',
      'msj':  'Ya estoy en camino, llegare en breve',
      'img':  '125'
    },
    {
      'name': 'Victor Alexander Perez',
      'msj':  'De momento ese seria el costo',
      'img':  '84'
    },
    {
      'name': 'Abisai Melendez',
      'msj':  'Me puede brindar los requisitos?',
      'img':  '32'
    },
    {
      'name': 'Daniel Pacheco',
      'msj':  'Solamente seria diseño estatico',
      'img':  '71'
    },
    {
      'name': 'Didier Alvarez',
      'msj':  'Mire, de momento no me hace tanta falta',
      'img':  '29'
    },
    {
      'name': 'Oscar Marquez',
      'msj':  'Estamos pendientes...',
      'img':  '100'
    },
    {
      'name': 'Marvin Quebedo',
      'msj':  'Desea solamente instalacion o con materiales de construccion.',
      'img':  '161'
    },
    {
      'name': 'Ana Vilma Herrera',
      'msj':  'Le puedo hacer una rebaja si son todos',
      'img':  '152'
    },
    {
      'name': 'Maria Transito',
      'msj':  'Lo siento, ropa de hombre no reparo',
      'img':  '158'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _crearItemsCorto(),
    );
  }

  List<Widget> _crearItemsCorto() {

    // rootBundle.loadString('assets/json/messages.json').then((data) {
    //   print(data);
    // });

    return opciones.map((var opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opt['name']),
            subtitle: Text(opt['msj']),
            leading: Image.network('https://i.picsum.photos/id/' + opt['img'] + '/100/100.jpg'),
            trailing: Icon(Icons.more_horiz),
            onTap: () {
              Navigator.pushNamed(context, 'chat');
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }

}