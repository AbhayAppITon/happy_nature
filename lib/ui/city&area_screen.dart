import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:happy_nature/widgets/colors.dart';
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

  String dropDownValue = "Delhi";
  String dropDownValue1 = "GK";

  var items =['Delhi','Punjab','Rajasthan',];
  var items1 =['Gk','Dl','Ps'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColor.themeColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 15),
                      child: const Text('Select City',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: MyColor.allTextColor),
                      ),
                    ),

                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:Colors.grey,
                            width: 1
                        ),
                        borderRadius:  const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            // Initial Value
                            value: dropDownValue,
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10,),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:Colors.grey,
                            width: 1
                        ),
                        borderRadius:  const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            // Initial Value
                            value: dropDownValue,
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(right: 370),
                      child: const Text("AMOUNT"),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:Colors.grey,
                                  width: 1
                              ),
                              borderRadius:  const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  // Initial Value
                                  value: dropDownValue1,
                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                                  // Array list of items
                                  items: items1.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropDownValue1 = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),

    );
  }
}
