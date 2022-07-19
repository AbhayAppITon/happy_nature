import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:happy_nature/ui/product_details.dart';
import 'package:happy_nature/ui/tryme_screen.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();
  String banner = "assets/images/bannner.png";
  List<Widget> imageSliders = [Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(5.0),
          child: Image.asset("assets/images/shopnowbanner.png",
          ),
    ), Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(5.0),
      child: Image.asset("assets/images/shopnowbanner.png",
      ),
    )];
  int _current = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Dashboard",),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  decoration: BoxDecoration(
                      color: MyColor.themeColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Balance Critically Low",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("100",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: MyColor.RechageColor
                      ),),
                      Row(
                        children: [
                          Image.asset("assets/images/buffalo.png",height: 90,),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text("Rechage Now to continue uninterrupted deliveries",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            ),
                          ),
                          SizedBox(width: 2),
                          Image.asset("assets/images/cow.png",height: 90),
                        ],
                      ),
                      CommonButton(borderColor: Colors.white,
                        containerColor: Colors.white,
                        width: 250,
                        stackContainerColor: MyColor.themeColor,
                        titleColor: Colors.white,
                        image: 'assets/images/imgs.png',
                        height: 50,title: "Recharge Wallet",),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Divider(thickness: 5,),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("8 June",style: TextStyle(
                          color: MyColor.themeColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),),
                      Stack(
                        fit: StackFit.passthrough,
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            width: 180,
                            height: 35,
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Container(),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 4,
                            child: Container(
                              height: 35,
                              width: 180,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: MyColor.themeColor,
                                  width: 1,
                                ),
                                color:  Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                              ),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10,),
                                  Icon(Icons.add,color: MyColor.themeColor,),
                                  const Text(
                                    'Add Vacation',
                                    style: TextStyle(color:MyColor.themeColor, fontSize: 15,fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset('assets/images/imgs.png',height: 30,)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 135,
                            child: Image.asset('assets/images/girl.png',height: 45,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TableCalendar(
                    startingDayOfWeek: StartingDayOfWeek.sunday,
                    focusedDay: DateTime.now(),
                    firstDay: DateTime(1990),
                    lastDay: DateTime(2050),

                    calendarFormat: CalendarFormat.week,
                    daysOfWeekHeight:40,
                    rowHeight: 40.0,
                    headerVisible: false,
                    calendarStyle: CalendarStyle(
                      cellMargin: EdgeInsets.all(2),
                      todayDecoration: const BoxDecoration(
                          color: Color(0XFFCFE4DE), shape: BoxShape.rectangle),
                    ),
                    daysOfWeekStyle: const DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: Colors.black),
                      weekendStyle: TextStyle(color: Colors.black),
                    ),
                    // onFormatChanged: (CalendarFormat _format) {
                    //   setState(() {
                    //     // if (_format == CalendarFormat.week) {
                    //     //   return calendarfunction();
                    //     // }
                    //     format = _format;
                    //   });
                    // },
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Items scheduled for today",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child:Row(
                                children: [
                                  Container(
                                      height:80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Image.asset("assets/images/girl.png",height: 100,)),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Premium Honey",style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400
                                        ),),
                                        Text("500 gms",style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Text("Packs:  2",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: MyColor.themeColor
                                  ),),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProductDetailsScreen()),
                          );
                        },
                        child: CommonButton(
                          borderColor: MyColor.themeColor,
                          containerColor: MyColor.themeColor,
                          stackContainerColor: Colors.white,
                          titleColor: MyColor.themeColor,
                          title: "Track Delivery",
                          height: 50,
                          image: 'assets/images/imgs.png',
                          width: MediaQuery.of(context).size.width/1.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 5,),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                      aspectRatio: 0.1,
                      height: 200,
                      enlargeCenterPage: true,
                      // scrollDirection: Axis.vertical,
                      autoPlay: true,
                    ),
                    items: imageSliders,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: imageSliders.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                            (Theme.of(context).brightness == Brightness.dark
                                ? Colors.grey
                                : MyColor.themeColor)
                                .withOpacity(
                                _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Text("Trending items",style: TextStyle(
                    fontSize: 24,
                    color: MyColor.themeColor,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  height: 190,
                  child: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset("assets/images/cow.png",height: 110,)),
                                SizedBox(height: 5,),
                                Text("Permium Honey",style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                ),),
                                SizedBox(height: 5,),
                                Text("₹ 72",style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                )),
                              ],
                            ),
                          ),
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: MyColor.themeColor),
                              ),
                              child: Icon(Icons.add,color: MyColor.themeColor,),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Text("Shop by Category",style: TextStyle(
                    fontSize: 24,
                    color: MyColor.themeColor,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 100,
                        child: Center(child: Image.asset("assets/images/cow.png",height: 80,)),
                      );
                    },
                  ),
                ),
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

              ],
            ),
            Positioned(
              top: 770,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TryMeScreen()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: MyColor.themeColor
                    ),
                    child: Center(child: Text("Try Me",style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),)),
                  ),
                )
            )
          ],
        ),
      )
    );
  }

}
