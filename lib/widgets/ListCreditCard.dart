import "package:bank_dashboard/widgets/CreditCard.dart";
import "package:flutter/material.dart";

class ListCreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Text(
            "Your Cards",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          height: 190,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => CreditCard(
              amount: 2607.20 * (index + 1),
            ),
          ),
        ),
      ],
    );
  }
}
