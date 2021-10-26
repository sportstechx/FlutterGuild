import 'package:flutter/material.dart';

class TermsAndConditionsButtonWidget extends StatelessWidget {
  const TermsAndConditionsButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        color: Colors.transparent,
        child: const Text("Terms & Conditions"),
      ),
    );
  }
}
