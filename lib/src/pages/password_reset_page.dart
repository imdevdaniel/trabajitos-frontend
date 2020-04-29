import 'package:flutter/material.dart';
final Color co1 = new Color(0xFFFFFF);
class PasswordResetPage extends StatelessWidget {
final _textoestilo1 = new TextStyle ( fontSize:20, color:Colors.white );
final _textoestilo = new TextStyle ( fontSize:16, color:Colors.white );
final _textoestilo5 = new TextStyle ( fontSize:13, color:Colors.white );
final _textoestilo3 = new TextStyle ( fontSize:28, color:Colors.white );
final _textoestilo4 = new TextStyle ( fontSize:20, color:Colors.blue);
final _textoestilo7 = new TextStyle ( fontSize:18, color:Colors.white);
final _textoestilo6 = new TextStyle ( fontSize:40, color:Colors.white, fontFamily: 'OpenSans');
final Color co = new Color(0xFF448AFF);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: co,
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: co1,
        title: Text('Password'),

      ),


     body: SingleChildScrollView( 
          
        child: Column(
         
         

          children: <Widget>[
            
            Text(
              'TRABAJITOS' , style: _textoestilo6,
            ),
            
            Text(
              'INICIO DE SESION',
              style: _textoestilo, 
            ),

             Text(
              '' , style: _textoestilo3,
            ),
            

             Text(
              '¿Olvidaste tu constraseña?', style:_textoestilo1,

            ),
            
            SizedBox ( 
               width: 345,
              height: 45,
              child:  Column(
      
                mainAxisAlignment: MainAxisAlignment.center,
    
          children: [
    
        //Icon(Icons.check_box, size: 25.0, color: Colors.white),
         Center ( child: Text('Ingrese su correo electronico acontinuación' , style: _textoestilo5)),
            
          ],
          
          ),
          
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
                
                hintText: 'a@example.com', 
                hintStyle: TextStyle(fontSize: 14, color: Colors.white,)
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
           Column(
           
            
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
              SizedBox(
              width: 200,
              height: 60, // specific value
            
              child: RaisedButton( 
                  color: Colors.white,
                  textColor: Colors.blueAccent,
                  
                child: Text("Enviar",style: _textoestilo4,),
                onPressed: (){
                Navigator.pushNamed(context, 'main'); }, 
               shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),),

               ),
               
               
            ),
            SizedBox (
               width: 0,
              height: 40,
            ),

            SizedBox(
              width: 200,
              height: 60, // specific value
            
              child: RaisedButton( 
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  elevation: 0,
                child: Text("Ayuda", style: _textoestilo7,),
                onPressed: (){
                Navigator.pushNamed(context, 'help'); }, 
               shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),),

               ),
               
               
            ),

               ],
           

          ),


          ],
        ),




        ),



    );

  }
}