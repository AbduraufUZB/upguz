import 'package:flutter/material.dart';
import 'package:upguzapp/core/base/base_view.dart';
import 'package:upguzapp/screens/admin/card/view/card_view.dart';
import 'package:upguzapp/screens/admin/home/view/home_view.dart';

class AdminTabBar extends StatefulWidget {
  const AdminTabBar({Key? key}) : super(key: key);

  @override
  State<AdminTabBar> createState() => _AdminTabBarState();
}

class _AdminTabBarState extends State<AdminTabBar>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: AdminTabBar,
      onPageBuilder: (context, widget) {
        return Scaffold(
          body: TabBarView(
            controller: _tabController,
            children: const [
              HomeView(),
              CardView()
            ],
          ),
          bottomNavigationBar: mytabbar,
        );
      },
    );
  }

  TabBar get mytabbar => TabBar(
        controller: _tabController,
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.shopping_bag_outlined),
            text: "Card",
          ),
        ],
      );
}
