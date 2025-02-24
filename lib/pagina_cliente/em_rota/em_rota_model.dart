import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/sem_atualizacao_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pagina_cliente/ver_mais_pedido/ver_mais_pedido_widget.dart';
import 'dart:ui';
import 'em_rota_widget.dart' show EmRotaWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EmRotaModel extends FlutterFlowModel<EmRotaWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in EmRota widget.
  List<EntregasRow>? outEmRota;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
