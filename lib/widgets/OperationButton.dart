import "package:flutter/material.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OperationButton extends StatelessWidget {
  int index;
  String name;
  IconData icon;

  OperationButton({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        name = "Save money";
        icon = MdiIcons.piggyBank;
        break;
      case 1:
        name = "Withdrawal";
        icon = MdiIcons.cash;
        break;
      case 2:
        name = "Receipt";
        icon = MdiIcons.receipt;
        break;
      case 3:
        name = "Scan";
        icon = MdiIcons.barcodeScan;
        break;
    }

    return Padding(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
      child: Container(
        width: 95,
        decoration: BoxDecoration(
          color: Colors.blueAccent[400],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 32,
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
