import 'package:flutter/material.dart';

class TextfieldTamplate extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String lable;

  const TextfieldTamplate({
    super.key,
    required this.lable,
    this.type = TextInputType.text,
    required this.controller,
  });

  @override
  State<TextfieldTamplate> createState() => _TextfieldTamplateState();
}

class _TextfieldTamplateState extends State<TextfieldTamplate> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextField(
        controller: widget.controller,
        obscureText:
            widget.type == TextInputType.visiblePassword ? _obscureText : false,
        decoration: InputDecoration(
            label: Text(widget.lable),
            suffixIcon: widget.type == TextInputType.visiblePassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility))
                : SizedBox()),
      ),
    );
  }
}
