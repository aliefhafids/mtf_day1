import 'package:flutter/material.dart';
import 'package:mtf_day1/ui/widgets/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Text(
          'Product',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'CD',
                    style: TextStyle(fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Jacket',
                    style: TextStyle(fontSize: 21.0),
                  ),
                )
              ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFEF7532),
        onPressed: () {},
        child: const Icon(Icons.shopping_cart, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
