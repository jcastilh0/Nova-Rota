import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_cliente_widget.dart' show PaginaClienteWidget;
import 'package:flutter/material.dart';

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
