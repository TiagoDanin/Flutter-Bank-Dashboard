import "package:flutter/material.dart";
import 'package:intl/intl.dart';

class TrascationCard extends StatelessWidget {
  double amount = 1;
  String name = "";
  String dateFormated = "";
  bool isPositive = false;

  TrascationCard({
    Key key,
    this.amount,
    this.name,
    this.dateFormated,
    this.isPositive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 8),
                  Icon(Icons.account_balance),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        dateFormated,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(children: [
                Text(
                  "${isPositive ? "+" : "-"} \$ ${(new NumberFormat("#,##0.00", "en_US")).format(amount)}",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: isPositive ? Colors.green : Colors.red),
                ),
                SizedBox(width: 8)
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
