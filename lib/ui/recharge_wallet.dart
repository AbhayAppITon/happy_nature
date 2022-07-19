import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';
import 'package:happy_nature/widgets/coustom_textformfiled.dart';
import 'package:happy_nature/widgets/string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RechargeWallet extends StatefulWidget {
  const RechargeWallet({Key? key}) : super(key: key);

  @override
  State<RechargeWallet> createState() => _RechargeWalletState();
}

class _RechargeWalletState extends State<RechargeWallet> {

  int currentIndex= 2;
  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    final TextEditingController amountController = TextEditingController();
    final TextEditingController voucherController = TextEditingController();


    return Scaffold(
      appBar: CustomAppbar(title: 'Recharge Wallet'),

      body: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              padding:  EdgeInsets.only(left: 10.sp,top: 30.sp),
              child:  Text(MyString.addMoney,style: TextStyle(fontSize: 17.sp),)),
          Padding(
            padding:  EdgeInsets.all(8.sp),
            child: Row(
              children:  [
                Text(' Available Balance is ',style: TextStyle(fontSize: 17.sp)),
                Text(' ₹ 0',style: TextStyle(color: MyColor.balanceColor,fontSize: 17.sp)),
              ],
            ),
          ),

           SizedBox(
            height: 25.h,
           ),

          Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding:  EdgeInsets.only(left: 10.sp),
                    child:  Text(
                      MyString.addMoney,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color:  MyColor.textColor,
                      ),
                    ),
                  ),
                   SizedBox(height: 10.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomTextFormFiled(
                      controller: amountController,
                      hint:'₹ Amount',
                    ),
                  ),

                   SizedBox(height: 10.h,),
                  Container(
                    alignment: Alignment.topLeft,
                    padding:   EdgeInsets.only(left: 10.sp),
                    child:  Text(
                      MyString.voucher,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color:  MyColor.textColor,
                      ),
                    ),
                  ),
                   SizedBox(height: 10.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomTextFormFiled(
                      controller: voucherController,
                      hint:' Voucher Code',
                    ),
                  ),
                  
                  Container(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.only(right: 10,top: 8),
                    child: const Text(MyString.applyCode,style: TextStyle(color:  MyColor.textColor,),),
                  )
                ],
              )
          ),


          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              // Max Size Widget
              Padding(
                padding:  const EdgeInsets.only(right: 25,top: 50,left: 37),
                child: Container(
                  height: 50.h,
                  width:double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: MyColor.themeColor,
                      width: 1,
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Container(),
                ),
              ),
              Positioned(
                top: 40,
                left: 42,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const RechargeWallet()));
                  },
                  child: Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.themeColor,
                        width: 1,
                      ),
                      color: MyColor.themeColor,
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add Money',
                          style: TextStyle(
                              color: MyColor.allTextColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Image.asset(
                          'assets/images/imgs.png',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        currentIndex: currentIndex,
        onTap:  (index) => setState(()=> currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home ),
              label: 'home',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_membership),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
