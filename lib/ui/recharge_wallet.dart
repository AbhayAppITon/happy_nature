import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';
import 'package:happy_nature/widgets/coustom_textformfiled.dart';
import 'package:happy_nature/widgets/string.dart';

class RechargeWallet extends StatefulWidget {
  const RechargeWallet({Key? key}) : super(key: key);

  @override
  State<RechargeWallet> createState() => _RechargeWalletState();
}

class _RechargeWalletState extends State<RechargeWallet> {
  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController addressController = TextEditingController();

    return Scaffold(
      appBar: CustomAppbar(title: 'Recharge Wallet'),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(MyString.addMoney),
          Row(
            children: const [
              Text(' Available Balance is ',style: TextStyle(fontSize: 18)),
              Text(' ₹ 0',style: TextStyle(color: MyColor.balanceColor,fontSize: 18)),
            ],
          ),
          Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 8),
                    child: const Text(
                      MyString.addMoney,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CustomTextFormFiled(
                    controller: nameController,
                    hint:'₹ Amount',
                  ),

                  const SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.topLeft,
                    padding:  const EdgeInsets.only(left: 8),
                    child: const Text(
                      'Email ID',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color:  MyColor.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CustomTextFormFiled(
                    controller: emailController,
                    hint:' Email Id',
                  ),

                  const SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 8),
                    child: const Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color:  MyColor.textColor,

                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CustomTextFormFiled(
                    controller: phoneController,
                    hint:' Phone Number',
                  ),

                  const SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 8),
                    child: const Text(
                      'ADDRESS',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color:  MyColor.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      controller: addressController,
                      decoration: const InputDecoration(
                        hintText: 'Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(),
                        ),
                      ),

                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Please enter your address';
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
