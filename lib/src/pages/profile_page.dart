import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {

  String _selectedAddressValue = 'pradera';
  String _selectedServiceValue = 'electricista';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Cuenta'),
        actions: <Widget>[
           FlatButton(
            textColor: Colors.white,
            child: Icon(Icons.account_circle),
             onPressed: (){ Navigator.pushNamed(context, 'login');
                },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            this._drawProfilePictureRow(),
            this._drawNameInputRow(),
            this._drawLastNameInputRow(),
            this._drawPhoneInputRow(),
            this._drawAddressInputRow(),
            this._drawServiceInputRow(),
            this._drawSaveButtonRow()

          ],
        ),
      ),
    );
  }

  Widget _drawProfilePictureRow() {

    return Container(
      padding: EdgeInsets.only(top: 48.0),
      child: Center(
        child: Image(
          image: AssetImage('assets/images/profiles/carlos.png'),
          width: 120.0,
        ),
      ),
    );

  }

  Widget _drawNameInputRow() {

    return Container(
      margin: EdgeInsets.only(top: 32.0, right: 32.0, bottom: 0, left: 32.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Nombre',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );

  }

  Widget _drawLastNameInputRow() {

    return Container(

      margin: EdgeInsets.only(top: 32.0, right: 32.0, bottom: 0, left: 32.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Apellido',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),

    );

  }

  Widget _drawPhoneInputRow() {

    return Container(

      margin: EdgeInsets.only(top: 32.0, right: 32.0, bottom: 0, left: 32.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Teléfono',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),

    );

  }

  Widget _drawAddressInputRow() {

    return Container(
      margin: EdgeInsets.only(top: 32.0, right: 32.0, bottom: 0, left: 32.0),
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.grey, )
        ),
        child: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          child: DropdownButton(
            value: this._selectedAddressValue,
            isExpanded: true,
            items: [
              DropdownMenuItem(child: Text('Colonia Santa Emilia'), value: 'santa_emilia',),
              DropdownMenuItem(child: Text('Colonia Miraflores'), value: 'miraflores',),
              DropdownMenuItem(child: Text('Colonia Pradera'), value: 'pradera',),
              DropdownMenuItem(child: Text('Colonia Carrillo'), value: 'carrillo',),
              DropdownMenuItem(child: Text('Urbanización España'), value: 'espana',),
              DropdownMenuItem(child: Text('Colonia Urbesa'), value: 'urbesa',),
            ],
            onChanged: (selectedValue) {

              setState(() {
                this._selectedAddressValue = selectedValue;
              });

            },
          ),
        ),
      ),
    );

  }

  Widget _drawServiceInputRow() {

    return Container(
      margin: EdgeInsets.only(top: 32.0, right: 32.0, bottom: 0, left: 32.0),
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.grey, )
        ),
        child: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          child: DropdownButton(
            value: this._selectedServiceValue,
            isExpanded: true,
            items: [
              DropdownMenuItem(child: Text('Electricista'), value: 'electricista',),
              DropdownMenuItem(child: Text('Fontanero'), value: 'fontanero',),
              DropdownMenuItem(child: Text('Pintor'), value: 'pintor',),
              DropdownMenuItem(child: Text('Jardinero'), value: 'jardinero',),
              DropdownMenuItem(child: Text('Traductor'), value: 'traductor',),
              DropdownMenuItem(child: Text('Albañil'), value: 'albanil',),
            ],
            onChanged: (selectedValue) {

              setState(() {
                this._selectedServiceValue = selectedValue;
              });

            },
          ),
        ),
      ),
    );

  }

  Widget _drawSaveButtonRow() {

    return Container(
      padding: EdgeInsets.only(top: 24.0, bottom: 48.0),
      child: Center(
        child: ButtonTheme(
          minWidth: 120.0,
          child: RaisedButton(
            color: Color.fromRGBO(44, 203, 50, 1),
            textColor: Colors.white,
            onPressed: () {},
            child: Text('Guardar'),
            ),
        ),
      ),
    );

  }

}