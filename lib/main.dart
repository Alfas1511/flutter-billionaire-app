import 'package:flutter/material.dart';
import 'package:flutter_billionaire_app/add_money_button.dart';
import 'package:flutter_billionaire_app/balance_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;

  void addMoney() async {
    setState(() {
      balance = balance + 500;
    });

    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save an double value to 'decimal' key.
    await prefs.setDouble('balance', balance);
  }

  void loadBalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save an double value to 'decimal' key.
    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  @override
  void initState() {
    super.initState();
    loadBalance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text("Billionaire App"), centerTitle: true),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BalanceView(balance: balance),
              AddMoneyButton(addMoneyFunction: addMoney),
            ],
          ),
        ),
      ),
    );
  }
}
