import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget{
  @override
  State<HomeActivity> createState() => _HomeActivity();

}
class _HomeActivity extends State<HomeActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          builder: (context, snapshot) {
            return ListView.builder(itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage('images/bg1.jpg'))
                ],
              );
            },
            itemCount: 10,);
          }),
        ),
      );
  }

}