import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_nature/ui/recharge_wallet.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';
import 'package:happy_nature/widgets/string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Wallet_screen extends StatefulWidget {
  const Wallet_screen({Key? key}) : super(key: key);

  @override
  State<Wallet_screen> createState() => _Wallet_screenState();
}

class _Wallet_screenState extends State<Wallet_screen> {
  int currentIndex= 2;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(title: 'Wallet'),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 35),
            child: Container(
              height: height*0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: MyColor.borderColor, //color of border
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(40), color: Colors.white,
              ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        MyString.wallet,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                      MyString.balance,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,color: MyColor.balanceColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('+',style: TextStyle(fontSize: 25),),
                      Text('₹ 0',style: TextStyle(color: Color(0xFF2B876F),fontSize: 20)),
                      Text('(Voucher Bonus)',style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  SizedBox(height: 10.h,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Stack(
                       clipBehavior: Clip.none,
                       children: <Widget>[
                         // Max Size Widget
                         Container(
                           height: 50.h,
                           width: 220.w,
                           decoration: BoxDecoration(
                             border: Border.all(
                               color: MyColor.themeColor,
                               width: 1,
                             ),
                             color: MyColor.themeColor,
                             borderRadius: const BorderRadius.all(Radius.circular(20)),
                           ),
                           child: Container(),
                         ),
                         Positioned(
                           bottom: 8,
                           left: 2,
                           child: InkWell(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> const RechargeWallet()));
                             },
                             child: Container(
                               height: 50.h,
                               width: 230.w,
                               decoration: BoxDecoration(
                                 border: Border.all(
                                   color: MyColor.themeColor,
                                   width: 1,
                                 ),
                                 color:  Colors.white,
                                 borderRadius: const BorderRadius.all(Radius.circular(20)),
                               ),
                               child:  Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                    Text(
                                     MyString.recharge,
                                     style: TextStyle(
                                         color: MyColor.textColor,
                                         fontSize: 15.sp,
                                       fontWeight: FontWeight.bold
                                     ),
                                   ),
                                   Image.asset(
                                     'assets/images/imgs.png',
                                     height: 30,
                                     color: const Color(0xFF2B876F),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),

                     Stack(
                       children: [
                         Image.asset('assets/images/wallet_image.png',height: 80,)
                       ],
                     )
                   ],
                 ),
                ],
              ),
            ),
          ),
          
          const Text(
              MyString.happyPayment,
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF2B876F)),
          ),
           Divider(
            height: 70.h,
            thickness: 1,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15),
            child: const Text('My Transactions',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Unbilld Consumption',style: TextStyle(fontSize: 17,color: MyColor.textColor),),
                Text('₹ 0',style: TextStyle(color: MyColor.balanceColor,fontSize: 20)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: const <Widget>[
                Text('17th June 2022', textAlign: TextAlign.center),
                Text('(Click for details)',style: TextStyle(color: MyColor.textColor), textAlign: TextAlign.center,),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Text('₹ 72', textAlign: TextAlign.center),
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              height: 20,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
