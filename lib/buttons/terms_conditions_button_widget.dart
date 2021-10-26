import 'package:flutter/material.dart';
import 'package:flutter_poli/buttons/base_button.dart';

/// Each child widget inherits from superclass and overrides required methods
class TermsAndConditionsButtonWidget extends BaseButton {
  const TermsAndConditionsButtonWidget({Key? key}) : super(key: key);

  @override
  String getEventName() => "terms";

  @override
  Map<String, dynamic> getEventMap(String? ident) {
    final props = super.getEventMap(ident);

    //XXX: some child can add its own properties
    props.addAll({"legal_clause": 1.0});

    return props;
  }

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
        child: const Text("Terms & Conditions"),
      ),
    );
  }
}
