import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/string.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds:5), ()=>Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Column(
                children: [
                  Container(
                    height:  height*0.8,
                    width: double.infinity,
                    color:  MyColor.themeColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/imgs2.png',height: height*0.2,),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              MyString.fresh,
                              style: TextStyle(fontSize: 20,color: Color(0xFF6FC6A8)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              MyString.initiative,
                              textAlign: TextAlign.center,

                              style: TextStyle(fontSize: 20,color: MyColor.allTextColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),

            Positioned(
              bottom:40,
                child: Image.asset('assets/images/imgs3.png',height:height*0.4,)),
          ],
        ),

    );
  }
}


class WaveClipper  extends CustomClipper<Path>{
  @override
 Path  getClip(Size size) {
    var path = Path();
    path.lineTo(0.0,size.height);

    var firstStart = Offset(size.width/5, size.height);
    var firstEnd = Offset(size.width / 2.25,size.height-50);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width- (size.width/3.24), size.height-105);

    var secondEnd = Offset(size.width ,size.height-5);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) => false;


  }

