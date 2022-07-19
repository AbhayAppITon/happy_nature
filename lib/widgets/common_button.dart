import 'package:flutter/material.dart';
import 'package:happy_nature/ui/dashboard_screen.dart';
import 'package:happy_nature/ui/otp_screen.dart';
import 'package:happy_nature/ui/profile_screen.dart';

import 'colors.dart';
class CommonButton extends StatefulWidget {
  double height;
  String title;
  Color titleColor;
  Color borderColor;
  Color stackContainerColor;
  Color containerColor;
  double width;
  String ? image;
  CommonButton({Key? key,required this.height,
    required this.stackContainerColor,
    required this.width,
    this.image,
    required this.containerColor,
    required this.title,required this.titleColor,required this.borderColor}) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {

    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: widget.height,
          width: widget.width,
          decoration:  BoxDecoration(
            color: widget.containerColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(),
        ),
        Positioned(
          bottom: 8,
          left: 4,
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: widget.borderColor,
                width: 1,
              ),
              color:  widget.stackContainerColor,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  widget.title,
                  style: TextStyle(color: widget.titleColor, fontSize: 20),
                ),
                Image.asset(widget.image!,height: 30,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
