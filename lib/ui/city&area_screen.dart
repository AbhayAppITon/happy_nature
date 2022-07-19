import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/string.dart';

class CityArea extends StatefulWidget {
  const CityArea({Key? key}) : super(key: key);

  @override
  State<CityArea> createState() => _CityAreaState();
}

class _CityAreaState extends State<CityArea> {

  final _formKey = GlobalKey<FormState>();

  bool value= false;
  final TextEditingController cityController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  String dropDownValueCity = "Delhi";
  String dropDownValueArea = "Gk";

  var itemsCity =['Delhi','Punjab','Rajasthan',];
  var itemsArea =['Gk','Dl','Ps'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColor.themeColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 15),
                    child: const Text('Select City',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: MyColor.allTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropDownValueCity,
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                              // Array list of items
                              items: itemsCity.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropDownValueCity = newValue??"";
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 15),
                    child: const Text('Select Area/ Building',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: MyColor.allTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              borderRadius: BorderRadius.circular(30),
                              value: dropDownValueArea,
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                              // Array list of items
                              items: itemsArea.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropDownValueArea = newValue??"";
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Text(
                    '*If your area is not available, please select the \narea/ building closest to you',
                    style: TextStyle(fontSize: 15,color:MyColor.allTextColor),
                  ),
                  const SizedBox(height: 20,),

                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 15),
                    child: const Text('Full Address',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: MyColor.allTextColor),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
                    child: SizedBox(
                      height: 90,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                              maxLines: 3,
                          // controller: controller,
                          decoration:  InputDecoration(
                            border: InputBorder.none,
                            // hintText: hint,
                            contentPadding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.multiline,
                  //     maxLines: 3,
                  //     controller: addressController,
                  //     decoration: const InputDecoration(
                  //       hintText: 'Address',
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  //         borderSide: BorderSide(),
                  //       ),
                  //
                  //     ),
                  //   ),
                  // ),
                   SizedBox(height: 50,),
                  CommonButton(
                    height: 50,
                    width: 250,
                    title: "Submit",
                    borderColor: MyColor.themeColor,
                    containerColor: Colors.white,
                    stackContainerColor: MyColor.themeColor,
                    titleColor: MyColor.titleColor,
                  )

                ],
              )
          ),
        ],
      ),

    );
  }
}
