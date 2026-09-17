import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'animal_page_model.dart';
export 'animal_page_model.dart';

class AnimalPageWidget extends StatefulWidget {
  const AnimalPageWidget({super.key});

  static String routeName = 'AnimalPage';
  static String routePath = '/animalPage';

  @override
  State<AnimalPageWidget> createState() => _AnimalPageWidgetState();
}

class _AnimalPageWidgetState extends State<AnimalPageWidget> {
  late AnimalPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimalPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFF181818),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 100.0,
                    height: 103.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF181818),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Logo5.png',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment(0.0, 1.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 24.0,
                              buttonSize: 40.0,
                              fillColor: Color(0xFF181818),
                              hoverColor: Colors.white,
                              hoverIconColor: Colors.black,
                              icon: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);

                        context.pushNamed(HomePageWidget.routeName);
                      },
                      child: Material(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: Icon(
                            Icons.home_filled,
                            color: Colors.white,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '5icp6od7' /* Home */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          tileColor: Color(0xFF181818),
                          dense: false,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                      
                      context.pushNamed(WormTestWidget.routeName);
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(
                          Icons.task,
                          color: Colors.white,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'suinlmb5' /* Worm Test */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tileColor: Color(0xFF181818),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                      
                      context.pushNamed(HomePageWidget.routeName);
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(
                          Icons.healing_rounded,
                          color: Colors.white,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '3rzhis5k' /* Treatment */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tileColor: Color(0xFF181818),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                      
                      context.pushNamed(FeedingWidget.routeName);
                    },
                    child: Material(
                      color: const Color.fromRGBO(0, 0, 0, 0),
                      child: ListTile(
                        leading: Icon(
                          Icons.food_bank,
                          color: Colors.white,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'k9kzaizf' /* Feeding */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tileColor: Color(0xFF181818),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                      
                      context.pushNamed(HomePageWidget.routeName);
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(
                          Icons.manage_search,
                          color: Colors.white,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'v5bq0spj' /* Manage */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tileColor: Color(0xFF181818),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);

                      context.pushNamed(LoginPageWidget.routeName);
                    },
                    child: Material(
                      color: const Color.fromRGBO(0, 0, 0, 0),
                      child: ListTile(
                        leading: Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'n2slwazh' /* Sign In */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tileColor: Color(0xFF181818),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                      
                      context.pushNamed(HomePageWidget.routeName);
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(
                          Icons.contact_page,
                          color: Colors.white,
                        ),
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'dzl9kmdw' /* Contact Us */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tileColor: Color(0xFF181818),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Image.asset(
            'assets/images/Logo5.png',
            width: 200.0,
            height: 200.0,
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            // alignment: Alignment(0.0, 1.0),
          ),
          centerTitle: true,
          // actions: [
          // IconButton(
          //   icon: Icon(Icons.menu, color: Colors.black),
          //   onPressed: () {
          //     scaffoldKey.currentState!.openDrawer();
          //   },
          // ),
          // ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Search Bar
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    controller: _model.searchController,
                    focusNode: _model.searchFocusNode,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    onSubmitted: (value) {
                      // TODO: Implement search logic
                      print("Searching for $value");
                    },
                  ),
                ),

                SizedBox(height: 30),

                /// Feature Grid
                /// ///////////////////////////////////////
                ///
                /// Squares for the features
                ///
                /// ///////////////////////////////////////
                Expanded(
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 160, // Controls width of each card
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1, // Controls height ratio
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
