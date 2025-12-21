import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginTextfieldModel {
  final String lable;
  final TextInputType type;

  LoginTextfieldModel(this.lable, this.type);
}

class LoginTextfield {
  static List<LoginTextfieldModel> loginTextfield = [
    LoginTextfieldModel(
      'User Name / E-mail',
      TextInputType.text,
    ),
    LoginTextfieldModel(
      'Password',
      TextInputType.visiblePassword,
    ),
  ];
}
