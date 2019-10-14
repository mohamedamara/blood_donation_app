import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestScreenFirestore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
         child: StreamBuilder(
           stream: Firestore.instance.collection("testCollection").snapshots(),
           builder: (context, snapshot) {
             if(!snapshot.hasData) return Text("loading...");
             return Text(snapshot.data.documents[0]["name"]);
           }
         ),
        ),
      ),
    );
  }
}
