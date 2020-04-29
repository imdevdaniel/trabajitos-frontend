import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _textoestilo = new TextStyle(fontSize: 16, color: Colors.white);
  final _textoestilo2 = new TextStyle(fontSize: 16, color: Colors.white);
  final _textoestilo3 = new TextStyle(fontSize: 28, color: Colors.white);
  final _textoestilo4 = new TextStyle(fontSize: 20, color: Colors.blue);
  final Color co = new Color(0xFF448AFF);
  final _textoestilo6 =
      new TextStyle(fontSize: 40, color: Colors.white, fontFamily: 'OpenSans');
  final _textoestilo5 = new TextStyle(fontSize: 13, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: co,
      appBar: AppBar(
        backgroundColor: co,
        elevation: 0,
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

             SizedBox(
               width: 0,
              height: 60,
             
            ), 

            Text(
              'TRABAJITOS',
              style: _textoestilo6,
            ),
            Text(
              'Iniciar Sesion',
              style: _textoestilo,
            ),
            Text(
              '',
              style: _textoestilo3,
            ),
            SizedBox(
              width: 370,
              height: 55,
              child: TextFormField(
                style: _textoestilo,
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: 'Ingrese su correo electronico:',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(
              width: 0,
              height: 10,
            ),
            SizedBox(
              width: 370,
              height: 55,
              child: TextFormField(
                obscureText: true,
                style: _textoestilo,
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: 'Repita su contraseña:',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    )),
              ),
            ),
            Text(
              '',
              style: _textoestilo,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                  height: 15,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'passwordReset');
                    },
                  ),
                ),

                //Icon(Icons.check_box, size: 25.0, color: Colors.white),
                Text(
                  ' ¿Olvidaste tu contraseña?',
                  style: _textoestilo,
                ),
              ],
            ),
            Text(
              '',
              style: _textoestilo,
            ),
            SizedBox(
              width: 200,
              height: 60, // specific value

              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.blueAccent,
                child: Text("Iniciar sesion", style: _textoestilo4),
                onPressed: () {
                  Navigator.pushNamed(context, 'main');
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),
            ),
            Text(
              '',
              style: _textoestilo2,
            ),
            Text(
              '|',
              style: _textoestilo2,
            ),
            Text(
              'O',
              style: _textoestilo2,
            ),
            Text(
              '|',
              style: _textoestilo2,
            ),
            Text(
              '',
            ),
            Text(
              'Registrarse para ofertar Servicios',
              style: _textoestilo2,
            ),
            Text(
              '',
            ),
            SizedBox(
              width: 200,
              height: 60, // specific value

              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.blueAccent,
                child: Text(
                  "Registrarse",
                  style: _textoestilo4,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'signUp');
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
