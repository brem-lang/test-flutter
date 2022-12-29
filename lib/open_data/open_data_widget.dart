import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenDataWidget extends StatefulWidget {
  const OpenDataWidget({
    Key? key,
    this.datas,
  }) : super(key: key);

  final String? datas;

  @override
  _OpenDataWidgetState createState() => _OpenDataWidgetState();
}

class _OpenDataWidgetState extends State<OpenDataWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/896/600',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.datas,
                    'name',
                  ),
                  style: FlutterFlowTheme.of(context).title1,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.datas,
                    'email',
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.datas,
                    'description',
                  ),
                  style: FlutterFlowTheme.of(context).bodyText2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
