import 'package:delivery_wash/components/default_button.dart';
import 'package:delivery_wash/home/main_screen.dart';
import 'package:delivery_wash/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _conectado = false ;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delivery wash',
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 125),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(labelText: 'CPF'),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha'),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    value: _conectado, 
                    onChanged: (bool? value) {
                      setState(() {
                        _conectado = value!;
                      });
                    }
                    
                    ),

                    Text('Manter-me conectado',
                    style: TextStyle(
                      fontSize: 14
                    ),
                    ),
                ],
              ),
            ),


            SizedBox(height: 70,),

            ElevatedButton(
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen()));
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),

             ElevatedButton(
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: Text(
                'Cadastre-se',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
