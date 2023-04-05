import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Authmethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> signupUser({
    required String email,
    required String password,
    required String username,
    required String bio,
  })async{
      String res = "some error occured";
      try{
         if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty ||bio.isNotEmpty){
            //resgister user
           UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);

           print(cred.user!.uid);
           await _firestore.collection('users').doc(cred.user!.uid).set({
            'username': username,
            'uid' : cred.user!.uid,
            'email': email,
            'bio' : bio,
            'followers': [],
            'following': [],
           });
           
           res = "success";
           
          //  await _firestore.collection('users').add({
           
          //  });

         }
      }
      catch(err){
          res = err.toString();
      }
      return res;
  }
}