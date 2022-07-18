import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  TextEditingController? controller;
   CustomTextFormFiled({Key? key,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        // hintText: "Enter User Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
              color: Colors.green
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
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

