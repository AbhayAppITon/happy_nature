import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  TextEditingController? controller;
  String? hint;

   CustomTextFormFiled({Key? key,this.controller,this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
          hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
              color: Colors.green,

          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
      ),
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter your name';
      //   }
      //   return null;
      // },
    );
  }
}

