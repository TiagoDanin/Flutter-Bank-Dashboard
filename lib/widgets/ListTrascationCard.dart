import "package:bank_dashboard/widgets/TransactionCard.dart";
import "package:flutter/material.dart";

class ListTrascationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 24, right: 12, bottom: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Last Transactions",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[400],
                ),
              )
            ],
          ),
        ),
        TrascationCard(
          amount: 14.20,
          name: "Uber",
          dateFormated: "05 May 2021",
          isPositive: false,
        ),
        TrascationCard(
          amount: 12.40,
          name: "Uber",
          dateFormated: "05 May 2021",
          isPositive: false,
        ),
        TrascationCard(
          amount: 1000,
          name: "Andry Hickt",
          dateFormated: "05 May 2021",
          isPositive: true,
        ),
        TrascationCard(
          amount: 14.99,
          name: "Xbox Game Pass",
          dateFormated: "04 May 2021",
          isPositive: false,
        ),
        TrascationCard(
          amount: 8.99,
          name: "Netflix",
          dateFormated: "04 May 2021",
          isPositive: false,
        ),
        TrascationCard(
          amount: 2500,
          name: "Maryy Davitt",
          dateFormated: "04 May 2021",
          isPositive: true,
        ),
        TrascationCard(
          amount: 500,
          name: "Andry Hickt",
          dateFormated: "02 May 2021",
          isPositive: true,
        ),
      ],
    );
  }
}
