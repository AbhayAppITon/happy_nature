import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';
import 'package:happy_nature/widgets/string.dart';
class Wallet_screen extends StatefulWidget {
  const Wallet_screen({Key? key}) : super(key: key);

  @override
  State<Wallet_screen> createState() => _Wallet_screenState();
}

class _Wallet_screenState extends State<Wallet_screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(title: 'Wallet'),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 35),
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
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                      MyString.balance,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,color: MyColor.balanceColor),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+',style: TextStyle(fontSize: 30),),
                      Text('₹ 0',style: TextStyle(color: Color(0xFF2B876F),fontSize: 25)),
                      Text('(Voucher Bonus)',style: TextStyle(fontSize: 25),)
                    ],
                  ),
                 const SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Stack(
                       overflow: Overflow.visible,
                       children: <Widget>[
                         // Max Size Widget
                         Container(
                           height: 50,
                           width: 220,
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
                           left: 4,
                           child: InkWell(
                             // onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (context)=> const ));
                             // },
                             child: Container(
                               height: 50,
                               width: 220,
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
                                   const Text(
                                     MyString.recharge,
                                     style: TextStyle(
                                         color: MyColor.textColor,
                                         fontSize: 15,
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
                         Image.asset('assets/images/wallet_image.png',height: 72)
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
          const Divider(
            height: 70,
            thickness: 1,
          ),
          const Text('My Transactions',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Unbilld Consumption',style: TextStyle(fontSize: 18,color: MyColor.textColor),),
                Text('₹ 0',style: TextStyle(color: MyColor.balanceColor,fontSize: 20)),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 15.0),
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
