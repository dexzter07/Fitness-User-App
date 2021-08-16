import 'package:dance_id/account/profile.dart';
import 'package:flutter/material.dart';
import 'activity.dart';
import 'explore_wellness.dart';
import 'favourite.dart';
import 'mainPage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavScreen(),
    );
  }
}


class BottomNavScreen extends StatelessWidget {

  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: false, // Recommended to set 'resizeToAvoidBottomInset' as tre while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.simple, // Choose the nav bar style with this property.
    );

  }

  List<Widget> _buildScreens() {
    return [
      MainPage(),
      ExploreWellness(),

      Favourite(),
      Activity(),
      Profile(),
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home, color: Colors.deepOrangeAccent,),title:"HOME"
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.explore, color: Colors.deepOrangeAccent,),title:"EXPLORE"
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.favorite, color: Colors.deepOrangeAccent,),title:"FAVOURITE"
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.local_activity_rounded, color: Colors.deepOrangeAccent,),title:"ACTIVITY"
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle, color: Colors.deepOrangeAccent,),title:"PROFILE"
      ),
    ];
  }

}
