import 'package:flutter/material.dart';

class WashPlanScreen extends StatefulWidget {
  

  @override
  _WashPlanScreenState createState() => _WashPlanScreenState();
}

class _WashPlanScreenState extends State<WashPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planos de lavagem')
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 350,
            color: Colors.red,

          )
        ],
      ),
    );
  }
}