import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {

  String title;
   CustomAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 18,),
        ),
        title:  Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 10),
            width:width*0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Colors.red
                )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('₹',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold ),),
                  Text('100',style: TextStyle(color: Colors.red,fontSize: 12),),
                  Icon(Icons.wallet_travel_outlined,color: Colors.blue,size: 15,)

                ],
              ),
            ),
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}

