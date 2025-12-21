import 'package:flutter/material.dart';
import 'package:mz_le_26/model/login_textfield.dart';
import 'package:mz_le_26/view/tamplates/textfield_tamplate.dart';

class LogSignPage extends StatelessWidget {
  const LogSignPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List _loginTextfields = LoginTextfield.loginTextfield;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _loginTextfields.map((i) {
            return TextfieldTamplate(
              lable: i.lable,
              type: i.type,
              controller: TextEditingController(),
            );
          }).toList(),
        ),
      ),
    ));
  }
}
