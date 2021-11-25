import 'package:delivery_wash/home/components/drawer_screen.dart';
import 'package:delivery_wash/washers/washers_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Delivery wash'),
        ),
        drawer: DrawerScreen(),
        body: Container(
          padding: EdgeInsets.only(top: 120),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Fazer agendamento'),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Container(
                    height: 100,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Meus agendamentos'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Planos de lavagem'),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Container(
                    height: 100,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => WashersScreen()));
                      },
                      child: Text('Lavadores'),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
