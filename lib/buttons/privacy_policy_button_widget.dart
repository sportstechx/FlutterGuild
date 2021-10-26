import 'package:flutter/material.dart';

class PrivacyPolicyButtonWidget extends StatelessWidget {
  const PrivacyPolicyButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        color: Colors.transparent,
        child: const Text("Privacy Policy"),
      ),
    );
  }
}
