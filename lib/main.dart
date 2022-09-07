import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Profile App'),
      ),
      body: ProfileApp(),
    ),
  ));
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Colors.orange,
        width: double.infinity,
        child: Column(children: [
          Icon(Icons.person_pin_rounded,size: 50.0,),
          const Text(
            '@appsinppuser',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const Text(
            '@developer@appsinppuser.com',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 40.0,)
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(right:50,top:40),
        child: Text('Acount info',style: TextStyle(fontSize: 25.0),),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 100, top: 100, bottom: 50),
          child: ListView(
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(' ahmed developer'),
              ),
              ListTile(
                leading: Icon(Icons.mobile_friendly),
                title: Text('Mobile',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('+9647504323456'),
              ),
              ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text('Email',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('ahmed rajo.com'),
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('Address',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Erbil,Kurdistan'),
              ),
              ListTile(
                leading: Icon(Icons.date_range),
                title: Text('D.O.B',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('7 jun 1999'),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}