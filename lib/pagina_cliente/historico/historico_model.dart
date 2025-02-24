import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pagina_cliente/ver_historico/ver_historico_widget.dart';
import 'dart:ui';
import 'historico_widget.dart' show HistoricoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HistoricoModel extends FlutterFlowModel<HistoricoWidget> {
  ///  Local state fields for this page.

  int? avaliacao;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Historico widget.
  List<EntregasRow>? outHistorico;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
