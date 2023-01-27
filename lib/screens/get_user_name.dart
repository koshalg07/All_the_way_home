import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class GetUserName extends StatelessWidget{
  final String documentId;
  GetUserName({required this.documentId});
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context){
    CollectionReference users = FirebaseFirestore.instance.collection('user');
    return FutureBuilder<DocumentSnapshot>(
        builder: ((context,snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            if(user == data['email'])
              return Text('Hello, ${data['name']}');
          }
          return Text('loading');
        })
    );
  }
}