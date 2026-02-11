import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'feeding_page_widget.dart' show FeedingWidget;
import 'package:flutter/material.dart';
import 'dart:async';

class FeedingModel extends FlutterFlowModel<FeedingWidget> {
  /// State fields for stateful widgets in this page
  final formKey = GlobalKey<FormState>();
  
  // Feeding page measurements
  double? waterLevel;

  // Subscription for database communication
  StreamSubscription? feedingSubscription;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// 3. Lifecycle Cleanup
    // Essential: Stops listening to Postgres when the page is closed
    feedingSubscription?.cancel();
  }
}