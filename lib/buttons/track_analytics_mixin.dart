import 'dart:math';

import 'package:flutter/material.dart';

//XXX: MIXIN changelog:

/// 1. Declaration of mixin
/// 2. Declaration of classes using the mixin

/// Mixin for widgets in settings section that have to track analytics events.
///
/// Usage: inherit from this superclass and override at least
/// - getName()
mixin TrackAnalyticsMixin {
  /// Tracks event using analytics underlying components
  Future<void> trackAnalyticsEvent() async {
    assert(_hasValidEventName());

    final String? ident = await _getUserId();
    //XXX: simplified example, just printing data instead of
    //accessing component that performs tracking
    print("name: ${getEventName()}, parameters: ${getEventMap(ident)}");
  }

  /// Returns the name for the analytics event we want to track
  String getEventName() => "";

  /// Builds a map for additional params. Superclass implementation only
  /// returns user_id
  Map<String, dynamic> getEventMap(String? ident) {
    final Map<String, dynamic> params = {"user_id": ident};

    return params;
  }

  /// Checks if analytics event has a valid name. Ex: not empty string
  bool _hasValidEventName() => getEventName().isNotEmpty;

  /// Retrieves user_id for current user.
  Future<String?> _getUserId() async {
    try {
      //XXX: simplified example, so just returning a random num
      //instead of accessing component that stores current user
      return Random().nextInt(1000).toString();
    } on Exception {
      return null;
    }
  }
}
