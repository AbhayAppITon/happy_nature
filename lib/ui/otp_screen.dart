import 'package:flutter/material.dart';
import 'package:happy_nature/ui/profile_screen.dart';
import 'package:happy_nature/widgets/base_textfield.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/string.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  MyColor.themeColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Padding(
            padding: EdgeInsets.only(top: 250.0,left: 16,right: 16),

            child: Text(
              MyString.CASHBACKRECHARG,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          const SizedBox(height: 50,),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25),

              child: const Text(
                'Enter OTP',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white

                ),
              )
          ),
          const SizedBox(height: 10,),
          BaseTextField(
          controller: otpController,
          ),
          const SizedBox(height: 30,),
           GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ProfileScreen()),
                );
              },
              child: CommonButton(height: 50)),
        ],
      ),
    );
  }
}
