import 'package:flutter/material.dart';

class AddMoneyButton extends StatelessWidget {
  final Function() addMoneyFunction;

  const AddMoneyButton({super.key, required this.addMoneyFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          minimumSize: Size(double.infinity, 0),
        ),
        onPressed: () {
          addMoneyFunction();
        },
        child: Text(
          'Add Money',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
