import 'package:delivery_wash/home/main_screen.dart';
import 'package:flutter/material.dart';

class SignUpCarScreen extends StatefulWidget {
  
  _SignUpCarScreenState createState() => _SignUpCarScreenState();
}

class _SignUpCarScreenState extends State<SignUpCarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de veículo'),
      ),

      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Placa do veículo'),
            ),

              SizedBox(height: 50),
            
             TextField(
              decoration: InputDecoration(labelText: 'Modelo do veículo'),
            )
          ],
        ),
      ),
      bottomNavigationBar:  Container(
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
      
                onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen()));
                },
                child: Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
    )
    );
  }
}