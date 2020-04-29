import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
    
final _textoestilo = new TextStyle ( fontSize:16, color:Colors.white );
final _textoestilo5 = new TextStyle ( fontSize:13, color:Colors.white );
final _textoestilo3 = new TextStyle ( fontSize:28, color:Colors.white );
final _textoestilo4 = new TextStyle ( fontSize:20, color:Colors.blue);
final _textoestilo6 = new TextStyle ( fontSize:40, color:Colors.white, fontFamily: 'OpenSans');
final Color co = new Color(0xFF448AFF);
final Color co1 = new Color(0xFFFFFF);
 bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: co,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: co,
        title: Text('Sign Up'),
         
      ),
      
     body:SingleChildScrollView( 

        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            SizedBox(
               width: 0,
              height: 40,
             
            ), 
            Text(
              'TRABAJITOS' , style: _textoestilo6,
            ),
            
            Text(
              'REGISTRARSE',
              style: _textoestilo, 
            ),
           
             Text(
              '' , style: _textoestilo3,
            ),
            
            SizedBox(
              width: 370,
              height: 45,
                 
              child: TextFormField(
                
              style: _textoestilo,
               
              decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.8),
              borderRadius: BorderRadius.all( Radius.circular(20), ),),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.all( Radius.circular(20),),
                 ),
                
                hintText: 'Nombres:', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white,)
              ),
              ),


            ),
              
           SizedBox(
               width: 0,
              height: 5,
             
            ),
             
            SizedBox(
              width: 370,
              height: 45,
              child: TextFormField(
              style: _textoestilo,
              decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.8),
              borderRadius: BorderRadius.all( Radius.circular(20), ), ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.all( Radius.circular(20),),
                 ),
                hintText: 'Apellidos:', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white, )
              ),
              ),
            ),

            SizedBox(
               width: 0,
              height: 5,
             
            ),

            SizedBox(
              width: 370,
              height: 45,
              child: TextFormField(
              style: _textoestilo,
              decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.8),
              borderRadius: BorderRadius.all( Radius.circular(20), ), ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.all( Radius.circular(20),),
                 ),
                hintText: 'Correo electronico:', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white, )
              ),
              ),
            ),
            
            
            SizedBox(
               width: 0,
              height: 5,
            ),

           
            SizedBox(
              
               width: 0,
              height: 5,

            ),

                SizedBox(
              width: 370,
              height: 45,
              child: TextFormField(
              style: _textoestilo,
              decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.8),
              borderRadius: BorderRadius.all( Radius.circular(20), ), ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.all( Radius.circular(20),),
                 ),
                hintText: 'Ingrese su número de telefono:', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white, )
              ),
              ),
            ),


            SizedBox(
              
               width: 0,
              height: 5,

            ),



              SizedBox(
              width: 370,
              height: 45,
              child: TextFormField(
              style: _textoestilo,
              decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.8),
              borderRadius: BorderRadius.all( Radius.circular(20), ), ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.all( Radius.circular(20),),
                 ),
                hintText: 'Número de DUI:', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white, )
              ),
              ),
            ),
               
            
            SizedBox(
              
               width: 0,
              height: 5,

            ),

       

            SizedBox(
              width: 370,
              height: 45,
              child: TextFormField(obscureText: true,
              style: _textoestilo,
              decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.8),
              borderRadius: BorderRadius.all( Radius.circular(20), ), ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.all( Radius.circular(20),),
                 ),
                hintText: 'Ingrese su contraseña:', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white, )
              ),
              ),
            ),
            
            SizedBox(
               width: 0,
              height: 5,
             
            ),

            SizedBox(
              width: 370,
              height: 45,
              child: TextFormField(obscureText: true,
              style: _textoestilo,
              decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0.8),
              borderRadius: BorderRadius.all( Radius.circular(20), ), ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 0.8),
                borderRadius: BorderRadius.all( Radius.circular(20),),
                 ),
                hintText: 'Repita su contraseña:', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white, )
              ),
              ),
            ),
            
          

           Text(
              '',
              
             style: _textoestilo,
            ),
          
          
            Text(
              '',
            ),
    
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    
        Icon(Icons.check_box, size: 25.0, color: Colors.white),
         Text(          
           '  Acepto los términos y condiciones del servicio', style: _textoestilo5,  
            ),
          ],
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
                  
                  child: Text("Registrarse",style: _textoestilo4,),
                onPressed: (){
                Navigator.pushNamed(context, 'login'); }, 
               shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),),

               ),
               
            ),

          


          ],
        ),




        ),


    );
    

  }
}