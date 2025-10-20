import 'package:flutter/material.dart';

class BalanceView extends StatelessWidget {
  final double balance;
  const BalanceView({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bank Balance",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            '$balance',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          // SizedBox(height: 10),
          // OutlinedButton(
          //   onPressed: loadBalance,
          //   child: Text('Load Balance'),
          // ),
        ],
      ),
    );
  }
}
