import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'historico_widget.dart' show HistoricoWidget;
import 'package:flutter/material.dart';

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
