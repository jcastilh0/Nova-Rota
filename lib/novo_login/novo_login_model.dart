import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'novo_login_widget.dart' show NovoLoginWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NovoLoginModel extends FlutterFlowModel<NovoLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2TextController;
  late bool textField2Visibility;
  String? Function(BuildContext, String?)? textField2TextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button-Login widget.
  List<UsersRow>? saidaUserLogin;
  // State field(s) for TipoUser widget.
  String? tipoUserValue;
  FormFieldController<String>? tipoUserValueController;
  // State field(s) for InputNome widget.
  FocusNode? inputNomeFocusNode;
  TextEditingController? inputNomeTextController;
  String? Function(BuildContext, String?)? inputNomeTextControllerValidator;
  // State field(s) for emailAddress-Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password-Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for password-Confirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textField2Visibility = false;
    passwordCreateVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    textField2FocusNode?.dispose();
    textField2TextController?.dispose();

    inputNomeFocusNode?.dispose();
    inputNomeTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
