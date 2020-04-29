import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Cuenta'),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            child: Text('Guardar'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            this._drawNameInputRow(),

          ],
        ),
      ),
    );
  }

  Widget _drawNameInputRow() {

    return Container(
      margin: EdgeInsets.only(top: 32.0, right: 16.0, bottom: 32.0, left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text('Nombre:'),

          Padding(padding: EdgeInsets.only(right: 16.0),),

          Container(
            width: 240.0,
            child: TextField(

            ),
          )

        ],
      ),
    );

  }

}