import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_three/shopping_page.dart';

class TabButtonPage extends StatelessWidget {
  const TabButtonPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
          child: Text(
            'Transactions',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: Column(
            children: [
              TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: tabText('On hold'),
                    ),
                    Tab(
                      child: tabText('Payouts(10)'),
                    ),
                    Tab(
                      child: tabText('Refunds'),
                    ),
                  ],
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue)),
              const SizedBox(
                height: 600,
                child: TabBarView(
                  children: [
                    Center(
                      child: Text(
                        'On hpld',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(child: ShoppingPage()),
                    Center(
                      child: Text(
                        'Refunds',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  tabText(String data) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // color: Colors.black12
      ),
      child: Center(child: Text(data)),
    );
  }
}
