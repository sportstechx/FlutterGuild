import 'package:flutter/material.dart';
import 'package:flutter_poli/buttons/base_button.dart';

/// Each child widget inherits from superclass and overrides required methods
class PrivacyPolicyButtonWidget extends BaseButton {
  const PrivacyPolicyButtonWidget({Key? key}) : super(key: key);

  @override
  String getEventName() => "privacy";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          trackAnalyticsEvent();
        },
        child: const Text("Privacy Policy"),
      ),
    );
  }
}
