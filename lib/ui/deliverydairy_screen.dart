import 'package:flutter/material.dart';
import 'package:happy_nature/widgets/costom_appbar.dart';

class DeliveryDairyScreen extends StatefulWidget {
  const DeliveryDairyScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryDairyScreen> createState() => _DeliveryDairyScreenState();
}

class _DeliveryDairyScreenState extends State<DeliveryDairyScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppbar(title: 'Delivery Preferences'),
        body: Column(
          children: const [
            TabBar(
                tabs: [
                  Tab(text: 'Dairy',),
                  Tab(text: 'Grocery',),

                ]
            )
          ],
        ),
      ),
    );
  }
}
