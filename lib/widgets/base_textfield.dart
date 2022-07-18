import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {

  TextEditingController? controller;
  String? hint;


  BaseTextField({this.controller, this.hint});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 20.0,left: 20),
      child: SizedBox(
        height: 45,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          child: TextFormField(
            controller: controller,
            decoration:  InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              contentPadding:  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
