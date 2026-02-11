import 'package:flutter/material.dart';
import 'feeding_page_model.dart';
export 'feeding_page_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';
import '/flutter_flow/flutter_flow_util.dart';

// 6. Optional: FlutterFlow's generated Supabase helpers
import '/backend/supabase/supabase.dart';

class FeedingWidget extends StatefulWidget {
  const FeedingWidget({super.key});
  
  static String routeName = "Feeding";
  static String routePath = "/feeding";

  @override
  State<FeedingWidget> createState() => _FeedingWidgetState();
   
}

class _FeedingWidgetState extends State<FeedingWidget>{
  // Load Model
  late FeedingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedingModel());

    // Set up the Realtime listener
    _model.feedingSubscription = Supabase.instance.client
        .from('feedings') // The Postgres table
        .stream(primaryKey: ['id']) // Supabase requires the PK for streams
        .listen((List<Map<String, dynamic>> data) {
      if (data.isNotEmpty) {
        setState(() {
          // Update the model variable with the number from the first row
          _model.waterLevel = data.first['water level'] as double;
        });
      }
    });
  }
  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white, // White background to make the box pop
    appBar: AppBar(
      title: const Text('Connection Test'),
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // The "Big Black Box"
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'DATABASE VALUE:',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  // This displays your live variable
                  Text(
                    _model.waterLevel?.toString() ?? 'Waiting...',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('If you see a number above, Supabase is connected!'),
        ],
      ),
    ),
  );
}
}
