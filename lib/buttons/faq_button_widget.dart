import 'package:flutter/material.dart';

class FaqButtonWidget extends StatelessWidget {
  const FaqButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        color: Colors.transparent,
        child: const Text("FAQ"),
      ),
    );
  }
}
