import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/base_textfield.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/string.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.themeColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16,right: 16),
            child: Text(
              MyString.CASHBACKRECHARG,
              style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 60,),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25),
              child: const Text(
                'Insert Phone Number',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              )
          ),
          const SizedBox(height: 10,),
          BaseTextField(
          controller: phoneController,

            hint: 'Phone Number',
          ),
          const SizedBox(height: 50,),
          CommonButton(height: 50,),
        ],
      ),
    );
  }
}
