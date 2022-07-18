import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/coustom_textformfiled.dart';
import 'package:happy_nature/widgets/string.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {

   const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex= 0;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController addressController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        ),
        title: const Text(
          "Update Profile",
          style: TextStyle(color: Colors.black),
        ),
          actions: <Widget>[
         Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 10),
          child: Container(
            width: 70,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
             border: Border.all(
               color: Colors.red
             )
           ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('h',style: TextStyle(color: Colors.red),),
                    Text('100',style: TextStyle(color: Colors.red,fontSize: 12),),
                    Icon(Icons.wallet_travel,color: Colors.blue,size: 15,)

                  ],
                ),
              ),
            ),
           )
            ),
               Padding(
               padding: const EdgeInsets.only(right: 30.0),
                child: GestureDetector(
                 onTap: () {},
                 child: const Icon(
                    Icons.notifications_outlined,color: Colors.black
                      ),
                   )
                 ),
                 ]
               ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
              child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 8),
                            child: const Text(
                              'Name',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                color:  MyColor.textColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          CustomTextFormFiled(
                            controller: nameController,
                          ),

                          const SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.topLeft,
                            padding:  EdgeInsets.only(left: 8),
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
                                  // hintText: "Address",
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

            ),


            const SizedBox(
              height: 50,
            ),

            Stack(
              fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: <Widget>[
                // Max Size Widget
                Container(
                  height: 50,
                  width: 250,
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
                  child: Container(
                    height: 50,
                    width: 250,
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
                          MyString.save,
                          style: TextStyle(
                              color: MyColor.textColor,
                              fontSize: 20
                          ),
                        ),
                        Image.asset('assets/images/imgs1.png',height: 30,)
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),

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
