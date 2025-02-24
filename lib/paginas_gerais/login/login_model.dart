import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2TextController;
  late bool textField2Visibility;
  String? Function(BuildContext, String?)? textField2TextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? saidaUserLogin;

  @override
  void initState(BuildContext context) {
    textField2Visibility = false;
  }

  @override
  void dispose() {
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    textField2FocusNode?.dispose();
    textField2TextController?.dispose();
  }
}
