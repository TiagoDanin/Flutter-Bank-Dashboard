import "package:bank_dashboard/widgets/ListCreditCard.dart";
import "package:bank_dashboard/widgets/ListOperationsCard.dart";
import "package:bank_dashboard/widgets/ListTrascationCard.dart";
import "package:flutter/material.dart";
import "package:material_design_icons_flutter/material_design_icons_flutter.dart";

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  HomeViewWithState createState() => HomeViewWithState();
}

class HomeViewWithState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bank Dashboard",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.dashboard_sharp,
            color: Colors.black,
          ),
          padding: EdgeInsets.only(left: 8),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: (int index) {},
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.account),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.formatListBulleted),
            title: Text("Transactions"),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.account),
            title: Text("Account"),
          ),
        ],
      ),
      body: Container(
        color: Colors.white70,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                "Welcome, Tiago Danin!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListCreditCard(),
            ListTrascationCard(),
            ListOperationsCard(),
          ],
        ),
      ),
    );
  }
}

/*
*
* Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CreditCard(),
          ],
        ),
      )
* */
