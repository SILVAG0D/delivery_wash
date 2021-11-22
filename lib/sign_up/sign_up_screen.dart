import 'package:delivery_wash/components/bottom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static String routName = "/sign_up";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Nome'),
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Sobrenome'),
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: 'CPF '),
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Senha'),
                )),
          ],
        ),
      ),
    bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02, horizontal: size.width * 0.03),
          child: BottomButton(
            text: "Salvar",
            press: () {
              
            }
            //  },
          ),
        ),
      ),
    );
  }
}
