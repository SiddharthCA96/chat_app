import 'package:chatter/models/user.dart' as model;
import 'package:chatter/utils/util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethod{
  final _userRef=FirebaseFirestore.instance.collection('users');
  final _auth=FirebaseAuth.instance;

  Future<bool>signUpUser(
    BuildContext context,
    String username,
    String email,
    String password,
  ) async{
    bool res =false;
    try{
      UserCredential cred= await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(cred.user!=null){
        model.User user =model.User(
          username:username.trim(),
          email:email.trim(),
          uid:cred.user!.uid,
        );
        await _userRef.doc(cred.user!.uid).set(user.toMap());
        res=true;
      }
    } on FirebaseAuthException catch(e){
      showSnackBar(context, e.message!);
      //res=false;
    }
    return res;

  }
}