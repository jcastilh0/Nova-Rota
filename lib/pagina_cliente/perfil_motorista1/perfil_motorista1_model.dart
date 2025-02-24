import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfil_motorista1_widget.dart' show PerfilMotorista1Widget;
import 'package:flutter/material.dart';

class PerfilMotorista1Model extends FlutterFlowModel<PerfilMotorista1Widget> {
  ///  Local state fields for this page.

  String? nome;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buscar nome)] action in perfilMotorista1 widget.
  ApiCallResponse? apiResultPerfil;
  // Stores action output result for [Backend Call - Query Rows] action in perfilMotorista1 widget.
  List<ClientesRow>? outQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
