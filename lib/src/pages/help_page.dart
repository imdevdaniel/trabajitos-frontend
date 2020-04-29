import 'package:flutter/material.dart';

final Color co1 = new Color(0xFFFFFF);
final Color co = new Color(0xFF448AFF);
final Color co3 = new Color(0xDD000000);
final _textoestilo1 = new TextStyle(fontSize: 20, color: Colors.white);
final _textoestilo = new TextStyle(fontSize: 16, color: Colors.white);
final _textoestilo5 = new TextStyle(fontSize: 13, color: Colors.white);
final _textoestilo3 = new TextStyle(fontSize: 28, color: Colors.white);
final _textoestilo4 = new TextStyle(fontSize: 20, color: Colors.blue);
final _textoestilo6 = new TextStyle(fontSize: 80, color: Colors.black87);

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: co,
        title: Text('Help Page'),
      ),
      
      body: Center(
       
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            
            children: <Widget>[

                
            Text(
              'Soporte y ',  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 48
                    ),
            ),
           
            Text(
              'Ayuda',  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 46
                    ),
            ),
            
            Text(
              '',  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30
                    ),
            ),
           
           
            Text(
                    'Si tuviese algun inconveniente para restablecer tú contraseña, nuestro equipo de soporte técnico puede ayudarte.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0
                    ),
                  ),

            Image(
                matchTextDirection: false,
                width: 260.0,
                image: AssetImage('assets/images/profiles/ayuda.png'),
              ),

               RaisedButton( 
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  
                child: Text("Llamar",style: _textoestilo1,),
                onPressed: (){
                Navigator.pushNamed(context, 'login'); }, 
               shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),),

               ),
            ]),
      ),
    );
  }
}
