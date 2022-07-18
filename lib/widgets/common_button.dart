import 'package:flutter/material.dart';
import 'package:happy_nature/ui/dashboard_screen.dart';
import 'package:happy_nature/ui/otp_screen.dart';
import 'package:happy_nature/ui/profile_screen.dart';

import 'colors.dart';
class CommonButton extends StatefulWidget {
  double? height;
   CommonButton({Key? key,this.height}) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {

    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  DashboardScreen()),
        );
      },
      child: Stack(
        fit: StackFit.passthrough,
        overflow: Overflow.visible,
        children: <Widget>[
          // Max Size Widget
          Container(
            height: widget.height,
            width: 250,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Container(),
          ),
          Positioned(
            bottom: 8,
            left: 4,
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                color:  MyColor.themeColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Image.asset('assets/images/imgs.png',height: 30,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
