import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
 

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery wash',),
        centerTitle: true,
      ),

      body: Container(
        margin: EdgeInsets.only(top: 125),
        child: Column(
          
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 30,right: 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'CPF'
                ),
              ),
            ),

              Padding(padding: EdgeInsets.all(20)),

             Padding(
               padding:  EdgeInsets.only(left: 30,right: 30),
               child: TextField(
                 obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha'
                ),
            ),
             ),
             

             ElevatedButton(
               onPressed: (){}, 
               
               child: Text('Logar',
               style: TextStyle(
                 fontSize: 18
               ),
               )
               ),

                ElevatedButton(
               onPressed: (){}, 
               
               child: Text('Cadastre-se',
               style: TextStyle(
                 fontSize: 18
               ),
               )
               ),

          ],
        ),
      ),
    );
  }
}