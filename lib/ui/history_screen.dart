import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  final List<String> images = [
    "assets/images/img02.png",
    "assets/images/img2.png",
    "assets/images/img02.png",
    "assets/images/img2.png",
    "assets/images/img2.png",
    "assets/images/img2.png",

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  GestureDetector(
        onTap: (){
          _showMaterialDialog();
        },
        child: const Center(
          child: Text(
            'PASHU CHIKITSAK',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
              color: Colors.black,
            ),
          ),
        ),
      ),

    );
  }


  void _showMaterialDialog(){
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child:  AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            title:  Container(
              height: 500,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.close)),

                    Text('Add Products for 8-Jun-2022'),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
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
                      ),
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemBuilder: (BuildContext, index){
                          return Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 200,
                                  width: 70,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.pink,),
                                  // backgroundImage: AssetImage(images[index],),
                                ),

                                title: Text("Premium Badaam Milk"),
                                subtitle: Text("₹ 72"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 50),
                                child: CommonButton(
                                  height: 30,
                                  width: 100,
                                  title: "- 1 +",
                                  borderColor: MyColor.themeColor,
                                  containerColor: Colors.white,
                                  stackContainerColor: MyColor.textColor,
                                  titleColor: MyColor.titleColor,
                                ),
                              )
                            ],
                          );
                        },
                        itemCount: images.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(5),
                        scrollDirection: Axis.vertical,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: CommonButton(
                        borderColor: MyColor.themeColor,
                        containerColor: MyColor.themeColor,
                        stackContainerColor: Colors.white,
                        titleColor: MyColor.themeColor,
                        title: "Save Changes",
                        height: 50,
                        width: 200,
                      ),
                    ),

                    CommonButton(borderColor: Colors.white,
                      containerColor: Colors.white,
                      width: 250,
                      stackContainerColor: MyColor.themeColor,
                      titleColor: Colors.white,
                      height: 50,title: "Recharge Wallet",),
                  ]
              ),
            )

          )
        );
      },
    );


  }
}
