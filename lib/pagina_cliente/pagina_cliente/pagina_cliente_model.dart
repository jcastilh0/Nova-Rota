import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/notifications_widget.dart';
import '/components/sem_atualizacao_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'pagina_cliente_widget.dart' show PaginaClienteWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:text_search/text_search.dart';

class PaginaClienteModel extends FlutterFlowModel<PaginaClienteWidget> {
  ///  Local state fields for this page.

  String? nome;

  String? codRastreio;

  String? status;

  DateTime? dataStatus;

  String? origemEncomenda;

  String? destinoEncomenda;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buscar nome)] action in PaginaCliente widget.
  ApiCallResponse? outUserApi;
  // Stores action output result for [Backend Call - Query Rows] action in PaginaCliente widget.
  List<EntregasRow>? outEncomenda;
  // State field(s) for CodRastreio widget.
  FocusNode? codRastreioFocusNode;
  TextEditingController? codRastreioTextController;
  String? Function(BuildContext, String?)? codRastreioTextControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codRastreioFocusNode?.dispose();
    codRastreioTextController?.dispose();
  }
}
