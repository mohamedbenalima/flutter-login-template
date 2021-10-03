import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final keyboardType;
  final controller;

  const InputTextWidget(
      {required this.labelText,
      required this.icon,
      required this.obscureText,
      required this.keyboardType,
      this.controller})
      : super();
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Container(
        child: Material(
          elevation: 15.0,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.circular(15.0),
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 15.0),
            child: TextFormField(
                controller: controller,
                obscureText: obscureText,
                autofocus: false,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  icon: Icon(
                    icon,
                    color: Colors.black,
                    size: 32.0, /*Color(0xff224597)*/
                  ),
                  labelText: labelText,
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
                  hintText: '',
                  enabledBorder: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  border: InputBorder.none,
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'le champ de texte est vide!';
                  }
                }),
          ),
        ),
      ),
    );
  }
}
