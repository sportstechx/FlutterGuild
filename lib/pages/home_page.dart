import 'package:flutter/material.dart';
import 'package:flutter_poli/buttons/faq_button_widget.dart';
import 'package:flutter_poli/buttons/privacy_policy_button_widget.dart';
import 'package:flutter_poli/buttons/terms_conditions_button_widget%20copy.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polymorphism Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            FaqButtonWidget(),
            TermsAndConditionsButtonWidget(),
            PrivacyPolicyButtonWidget()
          ],
        ),
      ),
    );
  }
}
