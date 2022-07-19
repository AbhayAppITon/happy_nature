import 'package:awesome_calendar/awesome_calendar.dart';
import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'package:happy_nature/widgets/common_button.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';
import 'package:table_calendar/table_calendar.dart';
class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  List<String> weekdays = ["S","M","T","W","T","F","S"];

  DateTime? singleSelect;

  Future<void> singleSelectPicker() async {
    final DateTime? picked = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return const AwesomeCalendarDialog(
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("Select Date",style: TextStyle(
              fontSize: 20,
              color: MyColor.themeColor
            ),),
          ),
          selectionMode: SelectionMode.single,
        );
      },
    );
    if (picked != null) {
      setState(() {
        singleSelect = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(title: "Happy Nature",),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: height*0.3,
                    width: width,
                    child: Image.asset("assets/images/product.png")),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("certified organic Honey",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),),
                          Text("(Multi- Flora)",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("₹ 275",style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            color: MyColor.themeColor
                          ),),
                          Text("(375 Gms)",style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF87BBAD)
                          ),),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Happy Nature Organic Honey (Multi- Flora) is produced from the high mountains of the Garhwal Himalayan range in Rudraprayag, Uttarakhand. The honey beong certified organic is free from all chemicals and is produced in the purest and most natural form"
                    ,style: TextStyle(
                      fontSize: 17
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select your plan type",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Trail",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 17
                            ),),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("One Time",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 17
                            ),),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Subscription",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 17
                            ),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Frequency",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Daily",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Alternate",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Every 3rd Day",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 17
                            ),),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Every 4th Day",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Every Nth Day",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Everyday except Nth Day",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                            decoration: const BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Text("Custom Days",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nth Day",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 15),
                              Stack(
                                fit: StackFit.passthrough,
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration:  BoxDecoration(
                                      color: MyColor.themeColor,
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 2),
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: MyColor.themeColor,
                                          width: 1,
                                        ),
                                        color:  Colors.white,
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.remove,color: MyColor.themeColor,),
                                          Text("1",style: TextStyle(
                                              fontSize: 20,
                                              color:Colors.black
                                          ),),
                                          Icon(Icons.add,color: MyColor.themeColor,),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Quantity",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 15),
                              Stack(
                                fit: StackFit.passthrough,
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration:  BoxDecoration(
                                      color: MyColor.themeColor,
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 2),
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: MyColor.themeColor,
                                          width: 1,
                                        ),
                                        color:  Colors.white,
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.remove,color: MyColor.themeColor,),
                                          Text("1",style: TextStyle(
                                              fontSize: 20,
                                              color:Colors.black
                                          ),),
                                          Icon(Icons.add,color: MyColor.themeColor,),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("Select Days",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 45,
                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder:(context,index){
                          return Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 40,
                              decoration: BoxDecoration(
                              color: MyColor.themeColor,
                              borderRadius: BorderRadius.all(Radius.circular(10),
                          ),),
                            child: Center(
                              child: Text(weekdays[index],style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sun",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 15),
                              Stack(
                                fit: StackFit.passthrough,
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration:  BoxDecoration(
                                      color: MyColor.themeColor,
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 2),
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: MyColor.themeColor,
                                          width: 1,
                                        ),
                                        color:  Colors.white,
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.remove,color: MyColor.themeColor,),
                                          Text("1",style: TextStyle(
                                              fontSize: 20,
                                              color:Colors.black
                                          ),),
                                          Icon(Icons.add,color: MyColor.themeColor,),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tue",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 15),
                              Stack(
                                fit: StackFit.passthrough,
                                clipBehavior: Clip.none,
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration:  BoxDecoration(
                                      color: MyColor.themeColor,
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    left: 4,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 2),
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: MyColor.themeColor,
                                          width: 1,
                                        ),
                                        color:  Colors.white,
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.remove,color: MyColor.themeColor,),
                                          Text("1",style: TextStyle(
                                              fontSize: 20,
                                              color:Colors.black
                                          ),),
                                          Icon(Icons.add,color: MyColor.themeColor,),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      SizedBox(height: 20),
                      Text("Date",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        // onTap: (){
                        //   showDialog(
                        //       context: context,
                        //       builder: (ctxt) => new AlertDialog(
                        //         title: ,
                        //       )
                        //   );
                        // },
                        onTap:()=>singleSelectPicker(),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                          decoration: const BoxDecoration(
                            color: Color(0XFFE7F1EF),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Text("17 June 2022",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: MyColor.themeColor,
                              fontSize: 17
                          ),),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: CommonButton(
                            height: 50,
                            stackContainerColor: Colors.white,
                            width: width*0.8,
                            containerColor: MyColor.themeColor,
                            title: "Save Change",
                            titleColor: MyColor.themeColor,
                            borderColor: MyColor.themeColor,
                            image: 'assets/images/heart.png',
                        ),
                      )
                    ],
                  ),
                )
              ],
        ),
      ),
    );
  }
  _selectDate(BuildContext context) async {
    CalendarFormat format = CalendarFormat.month;
    TableCalendar(
      startingDayOfWeek: StartingDayOfWeek.monday,
      focusedDay: DateTime.now(),
      firstDay: DateTime(1990),
      lastDay: DateTime(2050),

      calendarFormat: format,
      daysOfWeekHeight:50,
      rowHeight: 60.0,
      // calendarFormat : formats,
      headerStyle: const HeaderStyle(
          titleCentered: true,
          titleTextStyle: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold),
          formatButtonVisible: false,
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: Colors.blue,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: Colors.grey,
          )),
      calendarStyle: CalendarStyle(
        cellMargin: EdgeInsets.all(2),
        todayDecoration: const BoxDecoration(
            color: Colors.blue, shape: BoxShape.circle),
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.grey),
        weekendStyle: TextStyle(color: Colors.grey),
      ),
      onFormatChanged: (CalendarFormat _format) {
        setState(() {
          // if (_format == CalendarFormat.week) {
          //   return calendarfunction();
          // }
          format = _format;
        });
      },
    );
  }
}
