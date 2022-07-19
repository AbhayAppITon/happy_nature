import 'package:flutter/material.dart';
import 'package:happy_nature/ui/home_screen.dart';
import 'package:happy_nature/ui/subscription_screen.dart';
import 'package:happy_nature/ui/wallet_screen.dart';
import 'package:happy_nature/widgets/colors.dart';
import 'history_screen.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          SubscriptionScreen(),
          Wallet_screen(),
          HistoryScreen(),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          elevation: 25.0,
          selectedItemColor: MyColor.themeColor,
          showUnselectedLabels: true,
          onTap: (index){
            index ==currentPage
                ? print('same screen')
                : _pageController.jumpToPage(
              index,
            );
            changePage(index);
          },
          currentIndex: currentPage,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Subscription',
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.settings),
                icon: Icon(Icons.add),
                label: 'Wallet'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'History',
            ),
          ],
        )
    );
  }
  int _currentPage = 0;
  int get currentPage => _currentPage;
  void changePage(int index) {
    setState(() {
      this._currentPage = index;
    });
  }
}
