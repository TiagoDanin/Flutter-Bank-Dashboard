import 'package:bank_dashboard/widgets/OperationButton.dart';
import "package:flutter/material.dart";

class ListOperationsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Text(
            "Operations",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => OperationButton(index: index),
          ),
        ),
      ],
    );
  }
}
