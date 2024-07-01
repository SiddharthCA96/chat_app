import 'package:chatter/models/user.dart';
import 'package:flutter/material.dart';

//user provider class to basically store user model

class UserProvider extends ChangeNotifier{
  User _user=User(
    email: '',
    username: '',
    uid: '',
  );
  User get user=>_user;

  //we can use this fcb to set the user (whole identity)
  setUser(User user){
    _user=user;
    notifyListeners();
  }
}