import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';
class TryMeScreen extends StatefulWidget {
  const TryMeScreen({Key? key}) : super(key: key);

  @override
  State<TryMeScreen> createState() => _TryMeScreenState();
}

class _TryMeScreenState extends State<TryMeScreen> {
  String? day;
  // String dropdownvalue = 'Item 1';
  //
  // // List of items in our dropdown menu
  // var items = [
  //   'Item 1',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   'Item 5',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Try Me",),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                fillColor:MyColor.searchBarColor,
                filled: true,
                hintText: "Search...",
                prefixIcon: Icon(Icons.search_sharp,color: Colors.black54,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(
                      color: Colors.green
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
              ),
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Please enter your name';
              //   }
              //   return null;
              // },
            ),
          ),
          Stack(
            fit: StackFit.passthrough,
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(
                  color: MyColor.themeColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Container(),
              ),
              Positioned(
                bottom: 8,
                left: 4,
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: MyColor.themeColor,
                      width: 1,
                    ),
                    color:  Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 120,
                            child: Image.asset("assets/images/cow.png",height: 90,),
                          ),
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: MyColor.themeColor),
                              ),
                              child: Icon(Icons.add,size:20,color: MyColor.themeColor,),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Premium Badaam Milk ",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
