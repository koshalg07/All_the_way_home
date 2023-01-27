import 'package:all_the_way_home/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          leading: Container(
            width: 90,
            height: 90,
            child: Image.asset('assets/logo.png'),
          ),

          title: Text('All The Way Home',
              style:TextStyle(
                color: Colors.black,
              )),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu,size:30),
              onPressed: () {
                // Add your onPressed code here!
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
                child:Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Hello Koshal",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                )

            ),
            Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(1000)),
              ),
              child: Text("Building your dream house is now easier than ever with All The Way Home. Your Dream house is just a click away"),
            )
          ],

        ),


      ),
    );
  }
}
