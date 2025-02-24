import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'perfil_cliente_widget.dart' show PerfilClienteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilClienteModel extends FlutterFlowModel<PerfilClienteWidget> {
  ///  Local state fields for this page.

  String? nome;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buscar nome)] action in perfilCliente widget.
  ApiCallResponse? apiResultPerfil;
  // Stores action output result for [Backend Call - Query Rows] action in perfilCliente widget.
  List<ClientesRow>? outQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
