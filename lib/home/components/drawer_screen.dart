import 'package:delivery_wash/login/login_screen.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdns-images.dzcdn.net/images/artist/9b7bb7d363cd06ed68f18892bcaa510e/500x500.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),

                  Text(
                    'Gustavo',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white
                    ),
                  ),

                  Text(
                    'hello@hello.com',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),


                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500 ,
            ),
            ),
          ),

            ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500 ,
            ),
            ),
          ),

            ListTile(
              
            leading: Icon(Icons.arrow_back),
            title: Text('Logout',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500 ,
            ),
            ),
            onTap: () {
               Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          )
        ],
      ),
    );
  }
}
