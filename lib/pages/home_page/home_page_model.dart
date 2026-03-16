// import '/flutter_flow/flutter_flow_util.dart';
// import '/index.dart';
// import 'home_page_widget.dart' show HomePageWidget;
// import 'package:flutter/material.dart';

// class HomePageModel extends FlutterFlowModel<HomePageWidget> {
//   @override
//   void initState(BuildContext context) {}

//   @override
//   void dispose() {}
// }

import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  /// Search controller
  TextEditingController? searchController;
  FocusNode? searchFocusNode;

  @override
  void initState(BuildContext context) {
    searchController = TextEditingController();
    searchFocusNode = FocusNode();
  }

  @override
  void dispose() {
    searchController?.dispose();
    searchFocusNode?.dispose();
  }
}